
class User < ApplicationRecord
    has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,  uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8}

  def self.authenticate_with_credentials(email, password)
    user = find_by(email: email.strip.downcase) if email.present?
  
    if user&.authenticate(password)
      user
    else
      nil
    end
  end
  

end

  
