class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :title
      t.text :description
      t.integer :impact
      t.integer :likeliness

      t.timestamps
    end
  end
end
