class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },  format: { with: VALID_EMAIL_REGEX }
    has_secure_password
    validates :password, length: { minimum: 6 }
    #     • The ability to save a securely hashed password_digest attribute to the database
    # • A pair of virtual attributes18 (password and password_confirmation), including presence validations upon object creation and a validation requiring that they match
    # 18In this context, virtual means that the attributes exist on the model object but do not correspond to columns in the database.
    # • An authenticate method that returns the user when the password is correct (and false otherwise)
end
