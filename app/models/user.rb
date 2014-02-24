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
    
    # def self.authenticate(email, password)
    #   user = find_by_email(email)
    #   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
    #     user
    #   else
    #     nil
    #   end
    # end
end
