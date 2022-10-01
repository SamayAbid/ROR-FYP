# frozen_string_literal: true

class Activity < ApplicationRecord
  validates :name, presence: true
#  belongs_to :member
#  belongs_to :trainer
#  validates_length_of :members, maximum: 25
#  validates_length_of :trainer, minimum: 1
  has_one :trainer_activity
  has_many :member_activity
  has_one :trainer ,through: :trainer_activity , foreign_key: :user_id
  has_many :members ,through: :member_activity , foreign_key: :user_id

  #has_one :trainer , class_name: "User" , foreign_key: :user_id

  #accepts_nested_attributes_for :trainer_activity

end
