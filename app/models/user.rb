class User < ApplicationRecord

  
  enum phone_type: {"AllTell" => 0,
                    "ATT" => 1,
                    "NexTel" => 2,
                    "Sprint" => 3,
                    "Verizon" => 4,
                    "TMobile" => 5,
                    "USCellular" => 6,
                    "VirginMobile" => 7,
                    "Tracfone" => 8,
                    "MetoPCS" => 9,
                    "Cricket" => 10,
                    "Qwest" => 11,
                    "Ptel" => 12,
                    "Suncom" =>13
                  }

   validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
   validates :name, presence: true, uniqueness: true, :length => { :in => 3..20 }
   validates :phone, numericality: { only_integer: true }
   validates :phone, length: { is: 10 }
   validates :email, confirmation: true, uniqueness: true
   
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create

  

  

  has_secure_password
    


  
  



end
