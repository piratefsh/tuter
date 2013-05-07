# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Developer Seeds
User.create(first_name: 'Sher Minn', last_name: 'Chong',
            email:'sherminn@tuter.me', password: 'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Trever', last_name: 'Johnson',
            email: 'tjjo@hd.wisc.edu', password:'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Josh', last_name: 'Serbus',
            email:'serbus@tuter.me', password:'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Faiz', last_name: 'Lurman',
            email:'faiz@tuter.me', password:'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Adam', last_name: 'Thorson',
            email:'adthorson@tuter.me', password:'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Mike', last_name: 'Cheah',
            email:'cheah@tuter.me', password:'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Aedan', last_name: 'Swanesbury',
            email:'aedan@tuter.me', password:'PASSWORD', roles: %w[tutor student org])
User.create(first_name: 'Canan', last_name: 'Swanesbury',
            email:'canan@tuter.me', password:'PASSWORD', roles: %w[tutor student org])

# Tutor User Seeds
User.create(first_name: 'Essie', last_name: 'Vaill', roles: %w[tutor], rate: User.rates[0],
			email: 'essie@vaill.com', password: 'PASSWORD')
User.create(first_name: 'Billie', last_name: 'Tinnes', roles: %w[tutor], rate: User.rates[2],
			email: 'billie@tinnes.com', password: 'PASSWORD')
User.create(first_name: 'Zackary', last_name: 'Mockus', roles: %w[tutor], rate: User.rates[1],
			email: 'zackary@mockus.com', password: 'PASSWORD')
User.create(first_name: 'Rosemarie', last_name: 'Fifield', roles: %w[tutor], rate: User.rates[2],
			email: 'rosemarie@fifield.com', password: 'PASSWORD')
User.create(first_name: 'Bernard', last_name: 'Laboy', roles: %w[tutor], rate: User.rates[1],
			email: 'bernard@laboy.com', password: 'PASSWORD')
User.create(first_name: 'Sue', last_name: 'Haakinson', roles: %w[tutor], rate: User.rates[8],
			email: 'sue@haakinson.com', password: 'PASSWORD')
User.create(first_name: 'Valerie', last_name: 'Pou', roles: %w[tutor], rate: User.rates[3],
			email: 'valerie@pou.com', password: 'PASSWORD')
User.create(first_name: 'Lashawn', last_name: 'Hasty', roles: %w[tutor], rate: User.rates[3],
			email: 'lashawn@hasty.com', password: 'PASSWORD')
User.create(first_name: 'Marianne', last_name: 'Earman', roles: %w[tutor], rate: User.rates[6],
			email: 'marianne@earman.com', password: 'PASSWORD')
User.create(first_name: 'Mandy', last_name: 'Mcdonnell', roles: %w[tutor], rate: User.rates[4],
			email: 'mandy@mcdonnell.com', password: 'PASSWORD')
User.create(first_name: 'Conrad', last_name: 'Lanfear', roles: %w[tutor], rate: User.rates[7],
			email: 'conrad@lanfear.com', password: 'PASSWORD')
User.create(first_name: 'Cyril', last_name: 'Behen', roles: %w[tutor], rate: User.rates[6],
			email: 'cyril@behen.com', password: 'PASSWORD')
User.create(first_name: 'Shelley', last_name: 'Groden', roles: %w[tutor], rate: User.rates[9],
			email: 'shelley@groden.com', password: 'PASSWORD')
User.create(first_name: 'Rosalind', last_name: 'Krenzke', roles: %w[tutor], rate: User.rates[2],
			email: 'rosalind@krenzke.com', password: 'PASSWORD')
User.create(first_name: 'Davis', last_name: 'Brevard', roles: %w[tutor], rate: User.rates[8],
			email: 'davis@brevard.com', password: 'PASSWORD')
User.create(first_name: 'Trudy', last_name: 'Worlds', roles: %w[tutor], rate: User.rates[5],
			email: 'trudy@worlds.com', password: 'PASSWORD')
User.create(first_name: 'Claudio', last_name: 'Loose', roles: %w[tutor], rate: User.rates[6],
			email: 'claudio@loose.com', password: 'PASSWORD')
User.create(first_name: 'Sal', last_name: 'Pindell', roles: %w[tutor], rate: User.rates[6],
			email: 'sal@pindell.com', password: 'PASSWORD')
User.create(first_name: 'Cary', last_name: 'Mccamey', roles: %w[tutor], rate: User.rates[0],
			email: 'cary@mccamey.com', password: 'PASSWORD')
User.create(first_name: 'Dorothea', last_name: 'Sweem', roles: %w[tutor], rate: User.rates[1],
			email: 'dorothea@sweem.com', password: 'PASSWORD')


# Student User Seeds
User.create(first_name: 'Roger', last_name: 'Seid', roles: %w[student],
			email: 'roger@seid.com', password: 'PASSWORD')
User.create(first_name: 'Dollie', last_name: 'Daquino', roles: %w[student],
			email: 'dollie@daquino.com', password: 'PASSWORD')
User.create(first_name: 'Eva', last_name: 'Seahorn', roles: %w[student],
			email: 'eva@seahorn.com', password: 'PASSWORD')
User.create(first_name: 'Mamie', last_name: 'Mcintee', roles: %w[student],
			email: 'mamie@mcintee.com', password: 'PASSWORD')
User.create(first_name: 'Lyndon', last_name: 'Bellerdine', roles: %w[student],
			email: 'lyndon@bellerdine.com', password: 'PASSWORD')
User.create(first_name: 'Jacklyn', last_name: 'Emayo', roles: %w[student],
			email: 'jacklyn@emayo.com', password: 'PASSWORD')
User.create(first_name: 'Rubin', last_name: 'Crotts', roles: %w[student],
			email: 'rubin@crotts.com', password: 'PASSWORD')
User.create(first_name: 'Boris', last_name: 'Catino', roles: %w[student],
			email: 'boris@catino.com', password: 'PASSWORD')
User.create(first_name: 'Colin', last_name: 'Altonen', roles: %w[student],
			email: 'colin@altonen.com', password: 'PASSWORD')
User.create(first_name: 'Kerry', last_name: 'Evertt', roles: %w[student],
			email: 'kerry@evertt.com', password: 'PASSWORD')




Group.create(name: 'PHI 101', desc:'Philosophy Tutoring Group')
Group.create(name: 'MATH 211', desc:'I tutor Math to students')
Group.create(name: 'SOC 103', desc:'Social sciences one-on-one group')

