class CreateCampaignUsers < ActiveRecord::Migration
  def change
    create_table :campaign_users do |t|
      t.belongs_to :campaign
      t.belongs_to :user

      t.timestamps
    end

    add_index :campaign_users, :campaign_id
    add_index :campaign_users, :user_id
  end
end
