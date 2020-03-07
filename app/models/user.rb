class User < ApplicationRecord
  # 「課題」名前の長さに制限を追加する
  validates :name, presence: true, length: { maximum: 15}
  # 「課題」　メールアドレスの正規表現を追加
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}
  #　「課題」　パスワードの文字制限、アルファベット、数字の混合のみ可能にしてください。
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true, length: { minimum: 8, maximum: 32}, format: { with: VALID_PASSWORD_REGEX}
  has_secure_password
end
