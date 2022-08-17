class LogsController < ApplicationController

  before_action :authenticate_user!, only: [:index]

  # 必须用这个，否则post会被拦截
  skip_before_action :verify_authenticity_token

  def index
    @logs = Log.order('created_at desc').page(params[:page]).per(100)
  end

  def create
    save
    render plain: 1
  end

  def x
    save
    render plain: 1
  end

  def fake_index
  end

  private
  def save
    controller = params[:controller]
    action = params[:action]
    request_type = restful_method(params)
    Log.create!(:action => action, :controller => controller,
        :parameters =>  params.inspect,
        :remote_ip=> request.remote_ip,
        :restful_method => restful_method(params),
        :full_request => request.inspect
               )
    send_notification_sms
  end
  # return: get, post, put or delete
  def restful_method(params)
    return request.method.downcase
    #params[:authenticity_token].blank? ? 'get' : ((params[:_method]) || 'post')
  end

  require 'aliyunsdkcore'
  def send_notification_sms

    client = RPCClient.new(
      access_key_id: ENV['aliyun_sms_key_id'],
      access_key_secret: ENV['aliyun_sms_key_secret'],
      endpoint: 'https://dysmsapi.aliyuncs.com',
      api_version: '2017-05-25'
    )

    my_params = {
      "PhoneNumbers": "#{ENV['mobile']}",
      "SignName": "#{ENV['aliyun_sms_signature']}",
      "TemplateCode": "#{ENV['aliyun_sms_template_code']}",
      "TemplateParam": "{\"#{ENV['aliyun_sms_template_param_name']}\":\"#{ENV['sms_content']}\"}"
    }

    Rails.logger.info "== my_params: #{my_params.inspect}"
    response = client.request(
      action: 'SendSms',
      params: my_params,
      opts: {
        method: 'POST'
      }
    )

    Rails.logger.info "== aliyun sms: #{response.inspect}"
  end
end
