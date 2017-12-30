class RenameVorgangs < ActiveRecord::Migration[5.1]
  def change
    rename_table :vorgangs, :vorgaenge
  end
end
