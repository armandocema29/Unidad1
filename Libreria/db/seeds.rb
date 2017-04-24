# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Doctor.create([{name:"Owner", address:"12, Street Name", city: "Fargo",state:"North Dakota", zip:12345, certified_by:"MIT", experience:12},{name:"Bob", address:"12, Street Name", city: "Fargo",state:"North Dakota", zip:12345, certified_by:"MIT", experience:12},{name:"Susan", address:"12, Street Name", city: "Fargo",state:"North Dakota", zip:12346, certified_by:"MIT", experience:18}])

Pet.create([{name:"Scooby", breed:"Great Dane", pet_type:"dog", age:12, weight:45, last_appointment:2015/12/12},{name:"Garfield", breed:"Exotic", pet_type:"cat", age:12, weight:45, last_appointment:2015/12/12}])