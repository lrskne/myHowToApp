class CreateHows < ActiveRecord::Migration
  def change
    create_table :hows do |t|
      t.string :description

      t.timestamps
    end
  end
end
