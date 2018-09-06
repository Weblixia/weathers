class CreateWeathers < ActiveRecord::Migration[5.2]
  def change
    create_table :weathers do |t|
      t.string :address
      t.string :tenki
      t.text :gaiyo
      t.float :kion
      t.float :max
      t.float :min
      t.float :kosui
      t.datetime :nichiji

      t.timestamps
    end
  end
end
