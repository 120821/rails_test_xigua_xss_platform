# 说明

Xigua XSS platform, a XSS platform based on Rails 6.

为啥叫xigua？ 因为西瓜x开头。

features:

- 记录XSS结果, 并且通过短信提示
- 有后台展示

## 需要

- 一个短域名
- 阿里云短信收发api, secret
- linux (ubuntu 18, mysql)

##（可选） 对于Linux小白，请这样做：

- 购买一个ubuntu 18
- 登录控制台（ssh方式)
- apt update
- apt install curl git
- apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev libdb-dev uuid-dev
- apt install libapr1-dev libxml2-dev libxslt1-dev libmysqlclient-dev git curl build-essential libssl-dev libreadline-dev build-essential libssl-dev libreadline-dev vim libcurl4 ruby-dev zlib1g-dev liblzma-dev ruby-all-dev

 默认你的mysql是root登录，没有密码的



## 部署(需要具备基本的rails知识)

- ruby 2.5.8
- node > 14
- yarn
- mysql

- gem install bundler -v 2.2.12
- bundle install --verbose
- cp config/database.yml.example config/database.yml
- cp config/application.yml.example config/application.yml
记得修改 `application.yml`文件的内容，这个关系到短信的发送
- bundle exec rake db:create
- bundle exec rake db:migrate
- bundle exec rails webpacker:install

重新生成master.key 和 credentials.yml.enc

- rm config/master.key
- rm config/credentials.yml.enc
- RAILS_ENV=production bundle exec rake assets:precompile

开发模式：
- bundle exec rails server

生产模式：
- bundle exec puma  -e production

生产模式下的守护进程：
- setsid nohup bundle exec puma &

即可


## 用法

访问：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095859.png)

列表：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095440.png)

默认页面是 一个假的 500 页面：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095607.png)

可以登录：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095632.png)

支持短信：

![](https://files.sweetysoft.com/blog_images/from_paste_20211120_095726.png)

## 记得及时把注册功能去掉哦~
