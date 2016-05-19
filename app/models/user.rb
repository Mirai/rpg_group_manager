class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :managed_campaigns, class_name: "Campaign", foreign_key: :game_master_id
  has_many :campaign_users
  has_many :campaigns, through: :campaign_users
end
