require 'faker'
#include Faker
I18n.reload!
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    cpn = Company.create!([{
        name: Faker::Company.name,
        companyType: Faker::Company.industry,
        location: Faker::Address.street_address
        }])

    msg = Message.create!([{
        date: Faker::Time.forward(23, :morning),
        message: 'default message'
        }])

    off = Offer.create!([{
        quantity: Faker::Number.digit,
        date: Faker::Time.forward(23, :morning)
        }])

    ord = Order.create!([{
        quantity: Faker::Number.digit,
        date: Faker::Time.forward(23, :morning)
        }])

    pic = Picture.create!([{
        pictureType: Faker::Types.rb_string(1)
        }])

    prod =Product.create!([{
        price: Faker::Number.positive,
        producType: Faker::Types.rb_string(1),
        brand: Faker::Types.rb_string(1),
        productName: Faker::Types.rb_string(1),
        description: 'default description',
        quantity: Faker::Number.digit
        }])

    user = User.create!([{
        name: Faker::Name.name,
        location: Faker::Address.street_address,
        userType: Faker::Types.rb_string(1),
        phone: Faker::Number.number(7),
        email: Faker::Internet.email
       }])
    
        BusinessManager.create!()
        Distributor.create!()
        DistributorHasProduct.create!()
        DistributorHasBusinessManager.create!()
end
