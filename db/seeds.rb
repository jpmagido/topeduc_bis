# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def destroy_all

	User.destroy_all
	Calendar.destroy_all
	
end

def create_user

	User.create(email: "jpmagido@me.com", password: "blablabla", first_name: "Jean-Philippe", last_name: "Magido", job: "Ruby Monster", nationality: "Française", phone: "0686631654", adress: "1 rue des Champs Elysées", ZIP_CODE: "75008", availability: true)
end

def create_calendar
	Calendar.create(user_id: 4, starts_at: "2019/10/26", duration: 3, recurring: false)

end

def perform
	destroy_all
	#create_user
	create_calendar
	puts "Seed done :)"
end

perform