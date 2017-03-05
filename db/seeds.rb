# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "leichaofan2024@gmail.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save
puts "created admin account"

products = ["wow1","wow2","wow3","wow4","wow5","wow6","wow7"]
products_description = ["1","2","3","4",
                        "5","6","7"]
products_prices = [80,84,23,56,23,78,43]
products_category = ["wow","wow","wow","wow","wow","wow","wow"]
products_image_path= ["https://ooo.0o0.ooo/2017/02/26/58b2974e61214.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b297785b0a5.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b29779d2402.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b2977ca14c0.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b2977d2c8c0.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b2977f7dc28.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b2995d1c0c6.jpg"]

create_products = for i in 1..7 do
  Product.create!([title:products[i-1],
    description: products_description[i-1],
    quantity: rand(30..90),
    price: products_prices[i-1],
    category: products_category[i-1],
    image_path: products_image_path[i-1] ])
end
puts "create wow products"

products = ["hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone"]
products_description = ["very good game","there are many people love it","very good game","there are many people love it",
                        "very good game","there are many people love it","This feeling is wow.","very good game","there are many people love it","This feeling is wow."]
products_prices = [80,84,23,56,23,78,43,32,12,32]
products_category = ["hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone","hearthstone"]
products_image_path= ["https://ww3.sinaimg.cn/large/006y8lVagy1fd3zqd2c8ij30hs0a03z6.jpg",
"https://ww2.sinaimg.cn/large/006y8lVagy1fd3zq624eyj30hs0a0gmc.jpg",
"https://ww2.sinaimg.cn/large/006y8lVagy1fd3zqr4kl6j30hs0a0mxv.jpg",
"https://ww2.sinaimg.cn/large/006y8lVagy1fd3zrdnppdj30hs0a074v.jpg",
"https://ww1.sinaimg.cn/large/006tNbRwgy1fd3zz1hx29j30hs0a0dgk.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b29d35025e4.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b29d671a894.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b29d86ec8c6.jpg",
"https://ooo.0o0.ooo/2017/02/26/58b29d8bf0c3b.jpg",
"https://ww4.sinaimg.cn/large/006tKfTcgy1fd408fq9xnj30hs0a0jsb.jpg"

]

create_products = for i in 1..10 do
  Product.create!([title:products[i-1],
    description: products_description[i-1],
    quantity: rand(30..90),
    price: products_prices[i-1],
    category: products_category[i-1],
    image_path: products_image_path[i-1] ])
end
puts "create hearthstone products"

products = ["starcraft","starcraft","starcraft","starcraft","starcraft","starcraft"]
products_description = ["very good game","there are many people love it","very good game","there are many people love it",
                        "very good game"]
products_prices = [80,84,23,56,23]
products_category = ["starcraft","starcraft","starcraft","starcraft","starcraft"]
products_image_path= ["https://ww1.sinaimg.cn/large/006tKfTcgy1fd4042r6juj30hs0a0gm1.jpg",
"https://ww4.sinaimg.cn/large/006tKfTcgy1fd405x45yfj30hs0a074o.jpg",
"https://ww2.sinaimg.cn/large/006tKfTcgy1fd4076i0frj30zk0k0t9x.jpg",
"https://ww4.sinaimg.cn/large/006y8lVagy1fd40aaip3uj308w0503yk.jpg",
"https://ww4.sinaimg.cn/large/006y8lVagy1fd40aaip3uj308w0503yk.jpg"
]

create_products = for i in 1..5 do
  Product.create!([title:products[i-1],
    description: products_description[i-1],
    quantity: rand(30..90),
    price: products_prices[i-1],
    category: products_category[i-1],
    image_path: products_image_path[i-1] ])
end
puts "create starcraft products"

products = ["diablo","diablo"]
products_description = ["very good game","there are many people love it"]
products_prices = [80,84]
products_category = ["diablo","diablo"]
products_image_path= ["https://ww1.sinaimg.cn/large/006y8lVagy1fd40d863xvj308w050t8o.jpg",
"https://ww2.sinaimg.cn/large/006y8lVagy1fd40e17s1mj308w0500sp.jpg"
]

create_products = for i in 1..2 do
  Product.create!([title:products[i-1],
    description: products_description[i-1],
    quantity: rand(30..90),
    price: products_prices[i-1],
    category: products_category[i-1],
    image_path: products_image_path[i-1] ])
end
puts "create diablo products"

products = ["overwatch","overwatch"]
products_description = ["very good game","there are many people love it"]
products_prices = [234,198]
products_category = ["overwatch","overwatch"]
products_image_path= ["https://ww4.sinaimg.cn/large/006tNbRwgy1fd40fbgg8rj30hs0a0gm6.jpg",
"https://ww1.sinaimg.cn/large/006y8lVagy1fd40j2ah54j30hs0a00sr.jpg"
]

create_products = for i in 1..2 do
  Product.create!([title:products[i-1],
    description: products_description[i-1],
    quantity: rand(30..90),
    price: products_prices[i-1],
    category: products_category[i-1],
    image_path: products_image_path[i-1] ])
end
puts "create overwatch products"

products = ["heroes","heroes"]
products_description = ["there are many people love it","very good game"]
products_prices = [234,87]
products_category = ["heroes","heroes"]
products_image_path= ["https://ww4.sinaimg.cn/large/006y8lVagy1fd40kk523lj308w0500sw.jpg",
"https://ww1.sinaimg.cn/large/006y8lVagy1fd42bxm1u6j30sc0kvtae.jpg"]

create_products = for i in 1..2 do
  Product.create!([title:products[i-1],
    description: products_description[i-1],
    quantity: rand(30..90),
    price: products_prices[i-1],
    category: products_category[i-1],
    image_path: products_image_path[i-1] ])
end
puts "create heroes products"
