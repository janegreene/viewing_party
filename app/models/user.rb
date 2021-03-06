class User < ApplicationRecord
  validates :email, :access_token, :refresh_token, presence: true
  validates :uid, uniqueness: true, presence: true

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :view_parties, dependent: :destroy
  has_many :party_guests, dependent: :destroy

  def self.from_omniauth(params)
    user = find_or_create_by(uid: params[:uid])
    user.email = params[:info][:email]
    user.access_token = params[:credentials][:token]
    user.refresh_token = params[:credentials][:refresh_token]
    user.save!
    user
  end
end
