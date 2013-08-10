class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description
      t.references :how

      t.timestamps
    end
    add_index :steps, :how_id
  end
end
