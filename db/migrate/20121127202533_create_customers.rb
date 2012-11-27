class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string  :username, :limit => 12#, :null => false
      t.string  :hashed_password, :limit => 45
      t.string  :first_name, :limit => 45
      t.string  :last_name, :limit => 45
      t.string  :address_1, :limit => 45
      t.string  :address_2, :limit => 45
      t.string  :address_3, :limit => 45
      t.string  :city, :limit => 45
      t.string  :postcode, :limit => 45
      t.string  :county, :limit => 45
      t.string  :country, :limit => 45
      t.string  :tel_no, :limit => 45
      t.string  :email, :limit => 45#, :null => false

      t.timestamps
    end
  end
end
