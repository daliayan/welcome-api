class CreateRestaurants < ActiveRecord::Migration[6.1]
    def change
        create_table :restaurants do |t|
            t.string :name
            t.string :nationality
            t.integer :rating
            t.string :avatar
            t.belongs_to :city, null: false, foreign_key: true

            t.timestamps
        end
    end
end


