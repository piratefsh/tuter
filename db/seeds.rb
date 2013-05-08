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

Organization.create(website: 'http://guts.studentorg.wisc.edu/', 
        about: 'The Greater University Tutoring Service (GUTS) is a Registered Student Organization (RSO) supported by segregated fees and dedicated to connecting UW students with volunteer tutors for assistance with academic courses, study skills, conversational English, and intercultural exchange.',
        desc: 'Greater University Tutoring Service', name: 'GUTS', user_id: 1, 
        email: 'guts@rso.wisc.edu')
Organization.create(website: 'https://www.facebook.com/plaUWmadison', 
        about: 'PLA (Peer Learning Association) is a professional student organization that establishes and runs free small group study sessions led by Peer Facilitators. In these sessions, students have to opportunity to test their understanding of course material by presenting their understanding of key topics to classmates in an informal setting. Topic lists are assigned weekly and students can easily prepare for them as part of their normal studying.',
        desc: 'Peer Learning Association - UW-Madison', name: 'Peer Learning Association', user_id: 5, 
        email: 'pla@rso.wisc.edu')

Program.create(desc: 'Time to tackle English!', name: 'Conversational English',
            organization_id: 1)

data = [{:email=>"marcelo@arostegui.com", :first_name=>"Marcelo", :last_name=>"Arostegui", :age=>60, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"armando@kolm.com", :first_name=>"Armando", :last_name=>"Kolm", :age=>63, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"marshall@hutch.com", :first_name=>"Marshall", :last_name=>"Hutch", :age=>73, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"kasey@nguyen.com", :first_name=>"Kasey", :last_name=>"Nguyen", :age=>36, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"ione@kucera.com", :first_name=>"Ione", :last_name=>"Kucera", :age=>38, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"armando@kolm.com", :first_name=>"Armando", :last_name=>"Kolm", :age=>36, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"kory@wooldridge.com", :first_name=>"Kory", :last_name=>"Wooldridge", :age=>46, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"lyman@whittley.com", :first_name=>"Lyman", :last_name=>"Whittley", :age=>37, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"sharlene@circelli.com", :first_name=>"Sharlene", :last_name=>"Circelli", :age=>61, :roles=>["tutor"], :password=>"PASSWORD"}, {:email=>"jessie@barkle.com", :first_name=>"Jessie", :last_name=>"Barkle", :age=>35, :roles=>["tutor"], :password=>"PASSWORD"}]
courses = [{:name=>"MATHEMATICS", :course_code=>"MAT 214"}, {:name=>"ENGLISH", :course_code=>"ENG 696"}, {:name=>"JEWISH", :course_code=>"JEW 654"}, {:name=>"RELIGIOUS", :course_code=>"REL 993"}, {:name=>"FOLKLORE", :course_code=>"FOL 498"}, {:name=>"MUSIC", :course_code=>"MUS 884"}, {:name=>"COMPUTER", :course_code=>"COM 342"}, {:name=>"COMPARATIVE", :course_code=>"COM 676"}, {:name=>"COMMUNICATION", :course_code=>"COM 077"}, {:name=>"E", :course_code=>"E 800"}, {:name=>"SOCIAL", :course_code=>"SOC 343"}, {:name=>"COMMUNICATION", :course_code=>"COM 522"}, {:name=>"INDUSTRIAL", :course_code=>"IND 275"}, {:name=>"INTERNATIONAL", :course_code=>"INT 119"}, {:name=>"GERMAN", :course_code=>"GER 431"}, {:name=>"GREEK", :course_code=>"GRE 725"}, {:name=>"ASIAN", :course_code=>"ASI 552"}, {:name=>"LATIN", :course_code=>"LAT 585"}, {:name=>"CLASSICS", :course_code=>"CLA 004"}, {:name=>"ENGLISH", :course_code=>"ENG 631"}]
lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse congue condimentum tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam suscipit faucibus vestibulum. Proin vel enim venenatis est pretium tincidunt eget a elit. "
locations = [{:name => "Memorial Library", :address => "Memorial Library, State Street, Madison, WI"},
                {:name => "Steenbock Library", :address => "Steenbock Memorial Library, Babcock Drive, Madison, WI"},
                {:name => "Union South", :address => "Union South, University of Wisconsin-Madison, 1308 W Dayton St, Madison, Dane, Wisconsin 53715"},
                {:name => "Helen C White", :address => "Helen C. White Hall, 600 N Park St, Madison, WI"},
                {:name => "Babcock Hall", :address => " 1605 Linden Dr, Madison, WI 53706"}]

# Tutor User Seeds
users = Array.new
groups = Array.new

random_sentences = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit", " Duis posuere ante eget orci commodo aliquet", " Vivamus rutrum dolor ac lacus commodo consectetur pretium eros aliquet", " Fusce non urna eget elit hendrerit consequat sit amet vel leo", " Proin at urna sapien", " Nunc eu urna nisi", " Curabitur condimentum consequat neque non volutpat", " Mauris pretium urna massa", " Vestibulum sit amet est at leo placerat convallis", " Pellentesque sed lorem lacus", " Praesent enim nisl, hendrerit a rutrum a, dictum non justo", " In mattis, augue sit amet varius tristique, nulla mi porta elit, eget ultrices est purus et mi", " Phasellus sagittis gravida tellus, sed dapibus ante vehicula ut", " Morbi ut orci feugiat orci molestie rutrum nec ac odio", " Donec commodo nunc vel tellus condimentum vel ultricies orci faucibus", "\n\nDonec magna eros, bibendum et hendrerit vitae, ultrices ac est", " Vestibulum eget massa magna, sit amet placerat elit", " Donec elementum est sit amet leo mollis tempus", " Integer dignissim, libero luctus interdum sollicitudin, ante magna ullamcorper diam, et ullamcorper libero justo sed justo", " Suspendisse pulvinar pharetra diam quis posuere", " Sed viverra venenatis nibh ac molestie", " In condimentum augue non massa varius ut bibendum justo cursus", " Maecenas turpis ligula, sollicitudin eget venenatis eget, sollicitudin scelerisque nibh", "\n\nVestibulum et metus nisi, sit amet vulputate lorem", " Curabitur ut lorem fermentum augue lacinia eleifend", " Sed ac aliquet arcu", " Aenean mattis mi tincidunt enim fringilla volutpat", " In in enim at nibh cursus iaculis non nec nisi", " Morbi eget risus id ipsum venenatis molestie", " Aliquam varius, tellus vel blandit pretium, nisl elit vehicula quam, ultrices tincidunt lectus nibh at nulla", " Duis vulputate augue pulvinar lacus elementum lacinia", "\n\n"]

data.each do |d|
    users << User.create(d)
end

if not Group.all.any?
    20.times do
        # Groups
        course = Course.create(courses.sample)
        group = Group.create(name: "GROUP",
                desc: lipsum,
                group_type: Group.group_types.sample,
                course: course,
                location: "LOCATION")

        tutor = User.all.sample

        until tutor.role? :tutor
            tutor = User.all.sample 
        end

        group.tutor_ids << TutorId.create(:tid => tutor.id)
        3.times do 
            group.student_ids << StudentId.create(:sid => User.all.sample.id)
        end

        group.save
    end
end

User.all.each do |u|
    # Year in school
    u.year = User.years.sample if u.year.nil?

    u.age = (18..35).to_a.sample if u.age.nil? or u.age > 35
    # Rates
    u.rate = User.rates.sample if u.role? :tutor and u.rate.nil?

    # Locations
    if not Location.where(:user_id => u.id).any?
        loc = Location.create(locations.sample)
        loc.user_id = u.id

        loc.save
    end
    u.save
end

# Add reviews

Review.all.each { |r| r.destroy}
if Review.all.size < 30
    30.times do 
        tutor = User.all.sample

        until tutor.role? :tutor
            tutor = User.all.sample 
        end
        Review.create(:title => random_sentences.sample, :content => random_sentences.sample, :reviewer_id => User.all.sample.id, :user_id => tutor.id,
                    :rating => (1..5).to_a.sample, :recommend => ["true", "false"].sample).save

    end
end

# Get rid of bad locations
Location.all.each { |l| l.destroy if l.user_id.nil?}


# Group.create(name: 'PHI 101', desc:'Philosophy Tutoring Group')
# Group.create(name: 'MATH 211', desc:'I tutor Math to students')
# Group.create(name: 'SOC 103', desc:'Social sciences one-on-one group')

# User.create(first_name: 'Essie', last_name: 'Vaill', roles: %w[tutor], rate: User.rates[0],
#           email: 'essie@vaill.com', password: 'PASSWORD')
# User.create(first_name: 'Billie', last_name: 'Tinnes', roles: %w[tutor], rate: User.rates[2],
#           email: 'billie@tinnes.com', password: 'PASSWORD')
# User.create(first_name: 'Zackary', last_name: 'Mockus', roles: %w[tutor], rate: User.rates[1],
#           email: 'zackary@mockus.com', password: 'PASSWORD')
# User.create(first_name: 'Rosemarie', last_name: 'Fifield', roles: %w[tutor], rate: User.rates[2],
#           email: 'rosemarie@fifield.com', password: 'PASSWORD')
# User.create(first_name: 'Bernard', last_name: 'Laboy', roles: %w[tutor], rate: User.rates[1],
#           email: 'bernard@laboy.com', password: 'PASSWORD')
# User.create(first_name: 'Sue', last_name: 'Haakinson', roles: %w[tutor], rate: User.rates[8],
#           email: 'sue@haakinson.com', password: 'PASSWORD')
# User.create(first_name: 'Valerie', last_name: 'Pou', roles: %w[tutor], rate: User.rates[3],
#           email: 'valerie@pou.com', password: 'PASSWORD')
# User.create(first_name: 'Lashawn', last_name: 'Hasty', roles: %w[tutor], rate: User.rates[3],
#           email: 'lashawn@hasty.com', password: 'PASSWORD')
# User.create(first_name: 'Marianne', last_name: 'Earman', roles: %w[tutor], rate: User.rates[6],
#           email: 'marianne@earman.com', password: 'PASSWORD')
# User.create(first_name: 'Mandy', last_name: 'Mcdonnell', roles: %w[tutor], rate: User.rates[4],
#           email: 'mandy@mcdonnell.com', password: 'PASSWORD')
# User.create(first_name: 'Conrad', last_name: 'Lanfear', roles: %w[tutor], rate: User.rates[7],
#           email: 'conrad@lanfear.com', password: 'PASSWORD')
# User.create(first_name: 'Cyril', last_name: 'Behen', roles: %w[tutor], rate: User.rates[6],
#           email: 'cyril@behen.com', password: 'PASSWORD')
# User.create(first_name: 'Shelley', last_name: 'Groden', roles: %w[tutor], rate: User.rates[9],
#           email: 'shelley@groden.com', password: 'PASSWORD')
# User.create(first_name: 'Rosalind', last_name: 'Krenzke', roles: %w[tutor], rate: User.rates[2],
#           email: 'rosalind@krenzke.com', password: 'PASSWORD')
# User.create(first_name: 'Davis', last_name: 'Brevard', roles: %w[tutor], rate: User.rates[8],
#           email: 'davis@brevard.com', password: 'PASSWORD')
# User.create(first_name: 'Trudy', last_name: 'Worlds', roles: %w[tutor], rate: User.rates[5],
#           email: 'trudy@worlds.com', password: 'PASSWORD')
# User.create(first_name: 'Claudio', last_name: 'Loose', roles: %w[tutor], rate: User.rates[6],
#           email: 'claudio@loose.com', password: 'PASSWORD')
# User.create(first_name: 'Sal', last_name: 'Pindell', roles: %w[tutor], rate: User.rates[6],
#           email: 'sal@pindell.com', password: 'PASSWORD')
# User.create(first_name: 'Cary', last_name: 'Mccamey', roles: %w[tutor], rate: User.rates[0],
#           email: 'cary@mccamey.com', password: 'PASSWORD')
# User.create(first_name: 'Dorothea', last_name: 'Sweem', roles: %w[tutor], rate: User.rates[1],
#           email: 'dorothea@sweem.com', password: 'PASSWORD')


# # Student User Seeds
# User.create(first_name: 'Roger', last_name: 'Seid', roles: %w[student],
#           email: 'roger@seid.com', password: 'PASSWORD')
# User.create(first_name: 'Dollie', last_name: 'Daquino', roles: %w[student],
#           email: 'dollie@daquino.com', password: 'PASSWORD')
# User.create(first_name: 'Eva', last_name: 'Seahorn', roles: %w[student],
#           email: 'eva@seahorn.com', password: 'PASSWORD')
# User.create(first_name: 'Mamie', last_name: 'Mcintee', roles: %w[student],
#           email: 'mamie@mcintee.com', password: 'PASSWORD')
# User.create(first_name: 'Lyndon', last_name: 'Bellerdine', roles: %w[student],
#           email: 'lyndon@bellerdine.com', password: 'PASSWORD')
# User.create(first_name: 'Jacklyn', last_name: 'Emayo', roles: %w[student],
#           email: 'jacklyn@emayo.com', password: 'PASSWORD')
# User.create(first_name: 'Rubin', last_name: 'Crotts', roles: %w[student],
#           email: 'rubin@crotts.com', password: 'PASSWORD')
# User.create(first_name: 'Boris', last_name: 'Catino', roles: %w[student],
#           email: 'boris@catino.com', password: 'PASSWORD')
# User.create(first_name: 'Colin', last_name: 'Altonen', roles: %w[student],
#           email: 'colin@altonen.com', password: 'PASSWORD')
# User.create(first_name: 'Kerry', last_name: 'Evertt', roles: %w[student],
#           email: 'kerry@evertt.com', password: 'PASSWORD')





