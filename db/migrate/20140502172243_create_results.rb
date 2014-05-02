class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.date :date
      t.integer :rep_scheme
      t.integer :load
      t.text :notes

      t.timestamps
    end
  end
end
