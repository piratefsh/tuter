# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Sher Minn', last_name: 'Chong',
            email:'sherminn@tuter.me', password: 'PASSWORD')
User.create(first_name: 'Trever', last_name: 'Johnson',
            email: 'tjjo@hd.wisc.edu', password:'PASSWORD')
User.create(first_name: 'Josh', last_name: 'Serbus',
            email:'serbus@tuter.me', password:'PASSWORD')
User.create(first_name: 'Faiz', last_name: 'Lurman',
            email:'faiz@tuter.me', password:'PASSWORD')
User.create(first_name: 'Adam', last_name: 'Thorson',
            email:'adthorson@tuter.me', password:'PASSWORD')

Group.create(name: 'PHI 101', desc:'Philosophy Tutoring Group')
Group.create(name: 'MATH 211', desc:'I tutor Math to students')
Group.create(name: 'SOC 103', desc:'Social sciences one-on-one group')

