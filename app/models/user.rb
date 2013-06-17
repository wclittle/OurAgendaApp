class User < ActiveRecord::Base
  has_and_belongs_to_many :meetings
  has_many :action_items
  has_many :agenda_items
  has_many :comments  

  has_secure_password
  before_validation :secure_password_digest

  private

  # if password_digest is blank, create a random password.
  def secure_password_digest
    self.password = SecureRandom.urlsafe_base64(16) if password_digest.blank?
  end
  
end
