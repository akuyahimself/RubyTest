class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :email, :nickname, :name, :password_digest, presence: true
  validates :email, uniqueness: true

  def downcase_nickname
    nickname.downcase!
  end

end
