# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.
roles = Role.create([{name: "Administrateur"}, {name: "Utilisateur"}])



# Add initial users in database.
users = User.create([{login: "thkernel", full_name: "Amos DEMBELE",   role_id: roles.first.id, email: "salut.amos@gmail.com", password: "AMOSXZIBITDE88",
    password_confirmation: "AMOSXZIBITDE88"}])

product_categories = ProductCategory.create([
    {name: "INFORMATIQUE", user_id: users.first.id}, 
    {name: "ELECTRONIQUE", user_id: users.first.id}
])

unities = Unity.create([
    {name: "Unité", unity_symbol: "U", user_id: users.first.id}, 
    {name: "Litre", unity_symbol: "L", user_id: users.first.id}
])

movement_types = MovementType.create([
    {name: "Entrée", user_id: users.first.id}, 
    {name: "Sortie",  user_id: users.first.id}
])

deposits = Deposit.create([
    {name: "NO-0001", address: "KALABAN COURA", user_id: users.first.id}, 
    {name: "NO-0002", address: "KALABAN COURA", user_id: users.first.id}
])

customers = Customer.create([
    {
        name: "LOGINEO", 
        user_id: users.first.id
    }, 
    {
        name: "OUAGADOUSOFT", 
        user_id: users.first.id
    }
])

providers = Provider.create([
    {
        name: "MICROSOFT INC", 
        user_id: users.first.id
    }, 
    {
        name: "SAMSUNG", 
        user_id: users.first.id
    }
])

products = Product.create([
    {
        name: "TABLETTE SURFACE PRO 2", 
        product_category_id: product_categories.first.id, 
        unity_id: unities.first.id, 
        deposit_id: deposits.first.id,
        unit_price: 200.0000,
        reorder_threshold: 100,
        user_id: users.first.id

    },
    {
        name: "SAMSUNG G9", 
        product_category_id: product_categories.last.id, 
        unity_id: unities.first.id, 
        deposit_id: deposits.first.id,
        unit_price: 900.0000,
        reorder_threshold: 100,
        user_id: users.first.id

    }
])

company = Company.create(name: "AUCTUM", user_id: users.first.id, address: "KALABAN COURA", phone: "+223 70 47 11 35")
