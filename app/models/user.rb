class User < ApplicationRecord

  TYPES = ['Member', 'Trainer']
  
  after_create :register_customer, if: ->{type.eql?('Member')}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable ,
         :recoverable, :rememberable, :validatable

  validates :name , presence: true
  validates :phone_no , presence: true , length: {is: 11}


  # has_many :trainer_activities
  # has_many :member_activities
  # has_many :activities , through: :trainer_activities
  # has_many :activities , through: :member_activities

  has_many :activites


  private
    def register_customer
      customer = Stripe::Customer.create(email: email)
      update(stripe_customer_id: customer.id)
    end 


    def member?
      type == 'Member'
    end
    
    def trainer?
      type == 'Trainer'
    end      

 
end