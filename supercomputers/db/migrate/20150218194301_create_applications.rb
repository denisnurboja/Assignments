class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :project
      t.references :supercomputer, index: true

      t.timestamps null: false
    end
    add_foreign_key :applications, :supercomputers
  end
end
