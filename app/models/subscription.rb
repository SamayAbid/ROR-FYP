class Subscription < ApplicationRecord
	
	validates :current_period_start , presence: true
	validates :current_period_end , presence: true
	validates :plan , presence: true

	enum plan: {None:0, Basic: 1, Pro: 2, Exclusive:3}

	belongs_to :user

end
