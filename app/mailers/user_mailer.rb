class UserMailer < Devise::Mailer
  def confirmation_instructions(record, token, opts={})
    headers["Custom-header"] = "Bar"
    opts[:subject] = 'my_custom_from@domain.com' # 邮件的主题，可更改成你想要的
    opts[:from] = 'my_custom_from@domain.com'  # 发件人邮箱地址
    opts[:reply_to] = 'my_custom_from@domain.com'
    super
  end
end
