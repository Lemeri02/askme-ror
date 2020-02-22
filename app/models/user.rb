require 'openssl'

class User < ApplicationRecord
  ITERATIONS = 20_000
  DIGEST = OpenSSL::Digest::SHA256.new
  USERNAME_PATTERN = /\A\w+\z/.freeze
  HEX_COLOR_PATTERN = /(?<=#)(?<!^)(\h{6}|\h{3})/.freeze

  attr_accessor :password

  has_many :questions, dependent: :destroy

  validates :email, :username, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :username, length: { maximum: 40 }, format: { with: USERNAME_PATTERN }
  validates :password, presence: true, confirmation: true, on: :create
  validates :color_theme, format: { with: HEX_COLOR_PATTERN }, on: :update

  before_validation :downcase_fields
  before_save :encrypt_password, :set_defaults

  def self.authenticate(email, password)
    user = find_by(email: email)

    if user.present? &&
       user.password_hash == User.hash_to_string(
         OpenSSL::PKCS5.pbkdf2_hmac(
           password, user.password_salt, ITERATIONS, DIGEST.length, DIGEST
         )
       )
      user
    else
      nil
    end
  end

  def self.hash_to_string(password_hash)
    password_hash.unpack('H*')[0]
  end

  def encrypt_password
    if self.password.present?
      self.password_salt = User.hash_to_string(OpenSSL::Random.random_bytes(16))
      self.password_hash = User.hash_to_string(
        OpenSSL::PKCS5.pbkdf2_hmac(
          self.password, self.password_salt, ITERATIONS, DIGEST.length, DIGEST
        )
      )
    end
  end

  private

  def set_defaults
    self.color_theme ||= '#005a55'
  end

  def downcase_fields
    self.email&.downcase!
    self.username&.downcase!
  end
end
