class Adscription < ActiveRecord::Base
	has_many :departments
	has_many :users, through: :departments
end
