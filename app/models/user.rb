class User < ApplicationRecord
	
	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	
  	validates :name, presence: true, uniqueness: true
	validates :prenom, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true


  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
