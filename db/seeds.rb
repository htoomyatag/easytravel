# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create([

{user_name: "htoomyatag", email: "htoomyatag.webdev@gmail.com", password: "12345678", password_confirmation: "12345678"},
{user_name: "theldarlykhin", email: "theldarlykhin.webdev@gmail.com", password: "12345678", password_confirmation: "12345678"},
{user_name: "easytravel", email: "easytravel.admin@gmail.com", password: "12345678", password_confirmation: "12345678"}
])





hotel = Hotel.create([

{name: "ace", price: "100000", rank: "1", destination_id:"1"},
{name: "max", price: "200000", rank: "2", destination_id:"1"},
{name: "baganprince", price: "300000", rank: "3", destination_id:"2"},
{name: "traders", price: "520400", rank: "5", destination_id:"2"},
{name: "sedona", price: "250000", rank: "4", destination_id:"3"}
])

local_transpotations = LocalTranspotation.create([

{name: "horsecart", price: "100", rank: "1"},
{name: "bullcart", price: "120", rank: "2"},
{name: "boat", price: "300", rank: "3"},

])


guide = Guide.create([

{name: "aye aye", price: "12000", rank: "1"},
{name: "thin ei", price: "13000", rank: "4"},
{name: "yu mon", price: "10000", rank: "5"},
{name: "kyaw kyaw", price: "33000", rank: "2"},
{name: "maw maw", price: "12000", rank: "3"}
])

destination = Destination.create([

{name: "ngwesaung", description:"the beach"},
{name: "bagan", description:"ancient city of mm"},
{name: "mandalay", description:"second largest city of mm"}
])



airfare = Airfare.create([

{from_airport: "yangon",to_airport: "bagan", name: "airbagan", price: "100000", rank: "3"},
{from_airport: "yangon",to_airport: "mandalay", name: "mandalayairway", price: "200000", rank: "5"},
{from_airport: "yangon",to_airport: "ngwesaun", name: "myanmarairway", price: "160000", rank: "1"}
])

travel_packages = TravelPackage.create([

{name: "bagan", price:"10000" ,airfare_id: "1", local_transpotation_id: "1", guide_id: "1", travel_detail: "this is travel detail aok aok oak aokaoa", hotel_id: "3"},
{name: "bagan", price:"8000" ,airfare_id: "1", local_transpotation_id: "1", travel_detail: "this is travel detail aok aok oak aokaoa", hotel_id: "3"},
{name: "bagan", price:"12000" ,airfare_id: "1", local_transpotation_id: "1", guide_id: "1", travel_detail: "this is travel detail aok aok oak aokaoa", hotel_id: "3"},



{name: "ngwesaung", price:"20000" ,airfare_id: "3", local_transpotation_id: "2", guide_id: "2", travel_detail: "this is travel detail aok aok aok aok aok", hotel_id: "1"},
{name: "mandalay", price:"40000" ,airfare_id: "2", local_transpotation_id: "3", guide_id: "3", travel_detail: "this is travel detail aok aok aok aok", hotel_id: "4"},

])

