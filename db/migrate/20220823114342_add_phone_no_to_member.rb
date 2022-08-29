class AddPhoneNoToMember < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :phone_no, :string
  end
end
