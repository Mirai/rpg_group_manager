class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.belongs_to :game_master
      t.text :campaign_type
      t.text :description
      t.string :uuid, unique: true
    end

    add_index :campaigns, :game_master_id
    add_index :campaigns, :uuid, unique: true
  end
end
