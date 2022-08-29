class AddNameToTrainer < ActiveRecord::Migration[6.1]
  def change
    add_column :trainers, :name, :string
  end
end
