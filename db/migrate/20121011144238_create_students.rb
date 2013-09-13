require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration

		def change
			create_table :students do |t|
				t.string :first_name
				t.string :last_name
				t.string :gender
				t.string :birthday
				t.text :email
				t.string :phone
				t.timestamps 
    # HINT: checkout ActiveRecord::Migration.create_table
  	end
	end

end
