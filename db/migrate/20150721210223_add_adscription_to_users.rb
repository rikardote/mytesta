class AddAdscriptionToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :adscription, index: true, foreign_key: true
  end
end
