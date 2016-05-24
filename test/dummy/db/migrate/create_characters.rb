class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.belongs_to :character
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
