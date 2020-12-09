# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Position.create([{
    title: Faker::Job.title,
    company_name: Faker::Company.name, 
    location: Faker::Address.full_address, 
    description: Faker::ChuckNorris.fact, 
    applied: [true, false].sample, 
    applied_date: Faker::Date.forward, 
    user_id: 1
},
{
    title: Faker::Job.title,
    company_name: Faker::Company.name, 
    location: Faker::Address.full_address, 
    description: Faker::ChuckNorris.fact, 
    applied: [true, false].sample, 
    applied_date: Faker::Date.forward, 
    user_id: 2
}, 
{
    title: Faker::Job.title,
    company_name: Faker::Company.name, 
    location: Faker::Address.full_address, 
    description: Faker::ChuckNorris.fact, 
    applied: [true, false].sample, 
    applied_date: Faker::Date.forward, 
    user_id: 3
},
{
    title: Faker::Job.title,
    company_name: Faker::Company.name, 
    location: Faker::Address.full_address, 
    description: Faker::ChuckNorris.fact, 
    applied: [true, false].sample, 
    applied_date: Faker::Date.forward, 
    user_id: 4
},{
    title: Faker::Job.title,
    company_name: Faker::Company.name, 
    location: Faker::Address.full_address, 
    description: Faker::ChuckNorris.fact, 
    applied: [true, false].sample, 
    applied_date: Faker::Date.forward, 
    user_id: 5
}
])

Contact.create([{
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    company_name: Faker::Company.name, 
    job_title: Faker::Job.title, 
    user_id: 1
},
{
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    company_name: Faker::Company.name, 
    job_title: Faker::Job.title, 
    user_id: 2
},
{
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    company_name: Faker::Company.name, 
    job_title: Faker::Job.title, 
    user_id: 3
},
{
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    company_name: Faker::Company.name, 
    job_title: Faker::Job.title, 
    user_id: 4
},
{
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email, 
    company_name: Faker::Company.name, 
    job_title: Faker::Job.title, 
    user_id: 5
}
])

User.create([
{
    email: Faker::Internet.email, 
    name: Faker::Name.name
}, 
{
    email: Faker::Internet.email, 
    name: Faker::Name.name
},
{
    email: Faker::Internet.email, 
    name: Faker::Name.name
},
{
    email: Faker::Internet.email, 
    name: Faker::Name.name
},
{
    email: Faker::Internet.email, 
    name: Faker::Name.name
}
])