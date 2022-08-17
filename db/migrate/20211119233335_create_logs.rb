class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :controller
      t.string :action
      t.string :remote_ip, :comment => '远程ip'
      t.string :restful_method, :comment => '请求的方法,  get/post...'
      t.string :user_name, :comment => '当前用户'
      t.text :parameters, :comment => '各种参数'
      t.text :full_request, :comment => '完整的request, 带有header, cookie等'
      t.timestamps
    end
  end
end
