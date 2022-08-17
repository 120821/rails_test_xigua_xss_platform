class SettingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  def index
    @settings = Setting.all
    @total_count = @settings.all.size
    @settings = @settings.order('id desc').page(params[:page]).per(100)
  end

  def show
  end

  def new
    @setting = Setting.new
  end

  def edit
  end

  def create
    @setting = Setting.new(setting_params)

    if @setting.save
      redirect_to @setting, notice: '操作成功'
    else
      render :new
    end
  end

  def update
    if @setting.update(setting_params)
      redirect_to @setting, notice: '操作成功'
    else
      render :edit
    end
  end

  def destroy
    @setting.destroy
    redirect_back fallback_location: '/settings', notice: '操作成功'
  end


  def download_csv
    require 'csv'

    headers = %w{名称 值 默认值 说明 创建时间}
    file = CSV.generate do |csv|
      csv << headers
      Setting.all.each_with_index do |setting, index|
        row = [setting.name, setting.value, setting.default, setting.comment, setting.created_at]
        Rails.logger.info "== row: #{row.inspect}"
        csv << row
      end
    end
    send_data file.encode("utf-8", "utf-8"), :type => 'text/csv; charset=utf-8; header=present', :disposition => "attachment;filename=settings.csv"
  end

  private
  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit(:name, :default, :value, :comment)
  end
end
