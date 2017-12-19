class CreateListenings < ActiveRecord::Migration[5.1]
  def change
    create_table :listenings do |t|
      t.string :name
      t.text :file_url

      t.timestamps
    end
  end
end
