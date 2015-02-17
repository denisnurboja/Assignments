class CreateSupercomputers < ActiveRecord::Migration
  def change
    create_table :supercomputers do |t|
      t.integer :rank
      t.string :name
      t.string :city
      t.string :country
      t.float :speed
      t.integer :memory
      t.float :power

      t.timestamps null: false
    end
  end
end
