# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

def random_date
    date = "#{rand(2010..2020)}" 
end 

def random_hashtag
    x = rand(1..3)
    if x == 1 
        x = "hashtag1"
    elsif x == 2 
        x = "hashtag2"
    else
        x = "hashtag3"
    end 
    return x 
end 

10000.times do 
    Tweet.create(date: random_date, hashtag: random_hashtag)
end 
