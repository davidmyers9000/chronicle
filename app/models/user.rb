class User < ActiveRecord::Base
	has_secure_password

  has_many :videos

  after_initialize :_set_default_role

  ROLES = ["admin", "instructor"]

  validates :email,     presence: true,
                        uniqueness: true,
                        format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

  validates :password,  presence: true, 
                        confirmation: true, 
                        if: :_password_present?

  private

    def _password_present?
      self.password.present?
    end

    def _set_default_role
      self.role ||= "author"
    end
end
