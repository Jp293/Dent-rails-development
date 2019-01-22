class AddUserToDents < ActiveRecord::Migration[5.2]
  def change
    add_reference :dents, :user, foreign_key: true
  end
end
