class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :title
      t.string :season
      t.string :step
      t.string :product

      t.timestamps
    end
  end
end
