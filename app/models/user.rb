class User < ActiveRecord::Base
	belongs_to :adscription
  	belongs_to :department
end
