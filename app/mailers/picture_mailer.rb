class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "qitengyuxi@gmail.com", subject: "投稿確認メール"
  end
end
