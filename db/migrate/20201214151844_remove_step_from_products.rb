class RemoveStepFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :step, :string
  end
end
