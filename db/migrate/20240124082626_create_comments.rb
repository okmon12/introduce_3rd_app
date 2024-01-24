class CreateComments < ActiveRecord::Migration[7.0]
   def change
     create_table :comments do |t|
       t.text :message, null: false
       t.date :birthdate, null: false
       t.text :strengths, null: false
       t.text :weaknesses, null: false
       t.references :user, null: false, foreign_key: true
       t.timestamps
    end
  end
end
