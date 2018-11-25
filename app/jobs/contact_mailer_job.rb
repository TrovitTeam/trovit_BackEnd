class ContactMailerJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    UserCreateMailer.user_create(user)
  end
end
