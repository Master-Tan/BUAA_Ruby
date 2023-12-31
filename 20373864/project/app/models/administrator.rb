class Administrator < ApplicationRecord
  has_many :administrator_logs, dependent: :destroy

  before_create :generate_authentication_token

  has_secure_password

  def generate_authentication_token
    loop do
      self.authentication_token = SecureRandom.base64(64)
      break unless Administrator.find_by(authentication_token: authentication_token)
    end
  end

  def reset_auth_token!
    generate_authentication_token
    save
  end
end
