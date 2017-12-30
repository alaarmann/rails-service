class CreateNachrichten < ActiveRecord::Migration[5.1]
  def change
    create_table :nachrichten do |t|
      t.string :sender
      t.text :inhalt
      t.references :vorgang, foreign_key: true

      t.timestamps
    end
  end
end
