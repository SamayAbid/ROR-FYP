class MemberActivity < ApplicationRecord

	belongs_to :activity
	belongs_to :member , class_name: "User" , foreign_key: :user_id 

end	