class CreateVorgangs < ActiveRecord::Migration[5.1]
  def change
    create_table :vorgangs do |t|
      t.string :referenz
      t.text :angaben

      t.timestamps
    end
  end
end
