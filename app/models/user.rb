class User < ActiveRecord::Base
	has_secure_password

  validates :email, presence: true

  validates :password,  
    presence: true, 
    confirmation: true,
    if: :_password_present?

  private

    def _password_present?
      self.password.present?
    end
    
end
