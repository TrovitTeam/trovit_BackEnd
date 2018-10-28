class ProductMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.product_creation.subject
  #
  def product_creation(user)
    @greeting = "Hi"
    @user = user

    mail to: user.email, subject: "Added Product"
  end
end
