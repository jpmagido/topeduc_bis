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
	Request.destroy_all
	Contract.destroy_all
	
end

def create_user

	User.create(email: "jpmagido@me.com", password: "blablabla", first_name: "Jean-Philippe", last_name: "Magido", job: "Ruby Monster", nationality: "Française", phone: "0686631654", adress: "1 rue des Champs Elysées", ZIP_CODE: "75008", availability: true)
end

def create_calendar
	Calendar.create(user_id: User.last.id, starts_at: "2019/10/26", duration: 3, recurring: false)

end

def create_request
	Request.create(user_id: User.last.id, starts_at: "2019/10/31", ends_at: "2019/11/10", hourly_rate: 20, adress: "20 rue du Temple", ZIP_CODE: "75003", client: "BNP Paribas", driving_licence: true, job: "Educateur enfants", comments: "travail avec des handicapés", other: "Attention aux clous", accepted?: nil)
end

def create_contract
	Request.last.update(accepted?: true)
	Contract.create(user_id: User.last.id, request_id: Request.last.id, starts_at: Request.last.starts_at, ends_at: Request.last.ends_at, hourly_rate: Request.last.hourly_rate, adress: Request.last.adress, ZIP_CODE: Request.last.ZIP_CODE, client: Request.last.client, job: Request.last.job, comments: Request.last.comments)
end

def perform
	destroy_all
	create_user
	create_calendar
	create_request
	create_contract

	puts "Seed done :)"
end

perform




