class User < ApplicationRecord
  
  after_create :register_customer

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable ,
         :recoverable, :rememberable, :validatable

  validates :name , presence: true
  validates :phone_no , presence: true , length: {is: 11}

  enum role: {Member: 0 , Trainer: 1}


  has_one :subscription


  private
    def register_customer
      customer = Stripe::Customer.create(email: email)
      update(stripe_customer_id: customer.id)
    end  

 
end