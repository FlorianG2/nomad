require 'json'
require 'date'

seed_resource_dir = "#{__dir__}/seed_resources/"

puts 'Cleaning Database...'
Category.destroy_all
Country.destroy_all
Currency.destroy_all
User.destroy_all
puts 'Cleaned Database'
puts '---------------------------'

puts 'Creating users...'
users_json = JSON.parse(File.read("#{seed_resource_dir}/users.json"))
users_json['users'].each do |user|
  attributes = {
    first_name: user['first_name'],
    last_name: user['last_name'],
    email: user['email'],
    password: user['password'],
    password_confirmation: user['password_confirmation'],
    admin: user['admin']
  }
  User.create!(attributes)
end
puts "Created #{User.count} users"
puts '---------------------------'

puts 'Creating countries...'
countries_json = JSON.parse(File.read("#{seed_resource_dir}/country.json"))
countries_json['countries'].each do |country|
  attributes = {
    name: country['Name'],
    code: country['Code']
  }
  Country.create!(attributes)
end
puts "Created #{Country.count} countries"
puts '---------------------------'

puts 'Creating currencies...'
currencies_json = JSON.parse(File.read("#{seed_resource_dir}/currency.json"))
currencies_json['currencies'].each do |currency|
  attributes = {
    name: currency['name'],
    symbol: currency['symbol_native']
  }
  Currency.create!(attributes)
end
puts "Created #{Currency.count} currencies"
puts '---------------------------'
