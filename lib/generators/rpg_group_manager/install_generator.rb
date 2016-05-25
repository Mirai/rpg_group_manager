module RpgGroupManager
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    def create_character_model
      create_file "app/models/character.rb", <<-FILE
class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :campaign

  validates :name, presence: true
end
      FILE
    end

    def create_character_migration
      create_migration "db/migrate/#{Time.now.strftime("%Y%m%d%H%M%S")}_create_characters.rb", <<-FILE
class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.belongs_to :campaign
      t.string :name
      t.string :age
      t.text :description
      t.text :bio
      t.text :notes

      # Define the rest of your RPG systems main character
      # options here e.g. Attributes (Strength, Intelligence, etc)
    end

    add_index :characters, :user_id
    add_index :characters, :campaign_id
  end
end
      FILE
    end

    def add_character_routes
      route "resources :characters"
    end

    # Print readme?
  end
end
