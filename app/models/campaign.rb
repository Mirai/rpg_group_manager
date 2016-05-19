class Campaign < ActiveRecord::Base
  belongs_to :game_master, class_name: "User"
  has_many :campaign_users
  has_many :users, through: :campaign_users

  before_create :generate_uuid

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
