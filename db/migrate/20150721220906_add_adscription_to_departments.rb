class AddAdscriptionToDepartments < ActiveRecord::Migration
  def change
    add_reference :departments, :adscription, index: true, foreign_key: true
  end
end
