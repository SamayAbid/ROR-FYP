class TrainerActivity < ApplicationRecord
	belongs_to :activity
	belongs_to :trainer , class_name: "User" , foreign_key: :user_id

	
end	