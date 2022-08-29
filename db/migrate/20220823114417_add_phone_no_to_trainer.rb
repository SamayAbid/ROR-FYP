class AddPhoneNoToTrainer < ActiveRecord::Migration[6.1]
  def change
    add_column :trainers, :phone_no, :string
  end
end
