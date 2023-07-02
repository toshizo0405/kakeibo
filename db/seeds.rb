# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(inout: 1, category: "給料", year: 2020, month: 7, amount:30)
Book.create(inout: 2, category: "家賃", year: 2020, month: 7, amount:8)
Book.create(inout: 2, category: "食費", year: 2020, month: 7, amount:6)
Book.create(inout: 2, category: "光熱費・水道", year: 2020, month: 7, amount:3)
Book.create(inout: 2, category: "保険", year: 2020, month: 7, amount:2)