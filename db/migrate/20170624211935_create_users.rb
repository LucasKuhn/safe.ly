class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :email
      t.string :location
      t.string :first_name
      t.string :last_name
    end
  end
end
