require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :gender, presence: true
	validates :birthday, presence: true
	validates_exclusion_of :age :in => 0..5, :message => "Hey Squirt, you're too young, beat it."
	validates :email, presence: true
	validates_format_of :email, :with => /[a-z0-9]+@[a-z0-9]+\.[a-z]{3}/
	validates :email, :uniqueness => true
	validates :phone, presence: true
	validates_formate_of :phone, :with => /[1-9]\d{9}/


	def name
		puts "#{self.first_name} #{self.last_name}"
	end

	def age
		birthday = self.birthday.to_date
		t = Time.now
		current_year = t.year
		age = current_year - birthday 

		puts "#{age}"
	end

end
