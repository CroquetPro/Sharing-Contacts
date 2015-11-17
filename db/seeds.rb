# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([
        { username: 'link' },
        { username: 'maven' },
        { username: 'connector'},
        { username: 'BMOC' },
        { username: 'chatterbox'},
        { username: 'rolodex'}
        ])

contacts = Contact.create([
          { name: 'Bob', email: 'bob@aol.com', user_id: 1},
          { name: 'Beth', email: 'beth@aol.com', user_id: 2},
          { name: 'Carl', email: 'carl@twd.com', user_id: 3},
          { name: 'Rick', email: 'rick@twd.com', user_id: 4},
          { name: 'Carol', email: 'carol@twd.com', user_id: 5},
          { name: 'Daryl', email: 'daryl@twd.com', user_id: 6}
          ])

contact_shares = ContactShare.create([
          { contact_id: 1, user_id: 2},
          { contact_id: 1, user_id: 3},
          { contact_id: 1, user_id: 4},
          { contact_id: 1, user_id: 5},
          { contact_id: 1, user_id: 6},
          { contact_id: 2, user_id: 1},
          { contact_id: 2, user_id: 3},
          { contact_id: 2, user_id: 4},
          { contact_id: 2, user_id: 5},
          { contact_id: 2, user_id: 6},
          { contact_id: 3, user_id: 1},
          { contact_id: 3, user_id: 2},
          { contact_id: 3, user_id: 4},
          { contact_id: 3, user_id: 5},
          { contact_id: 3, user_id: 6},
          { contact_id: 4, user_id: 1},
          { contact_id: 5, user_id: 1},
          { contact_id: 6, user_id: 1}
          ])
