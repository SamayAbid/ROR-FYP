class CreateMemberActivity < ActiveRecord::Migration[6.1]
  def change
    create_table :member_activities do |t|
      t.integer :user_id , foreign_key:true
      t.integer :activity_id , foreign_key:true
      t.timestamps
    end
  end
end
