User.create!([
  {name: "Ace", email: "ace@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Cheddar", email: "cheddar@gmail.com", password: "password", password_confirmation: "password"}
])

Supplier.create!([
  {name: "Thinkgeek", email: "thinkgeek@gmail.com", phone_number: "333-4444"},
  {name: "Dumbledore's Wizardry Supplies", email: "dws@gmail.com", phone_number: "555-7777"},
])

Category.create!([
  {name: "Damage"},
  {name: "Home Good"},
  {name: "Outer Space"}
])

Product.create!([
  {name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", inventory: 5, supplier_id: 1},
  {name: "Lightsaber", price: "270.0", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster", inventory: 7, supplier_id: 2},
  {name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!", inventory: 50, supplier_id: 2},
  {name: "DnD Dice set", price: "60.0", description: "Take down mighty dragons with this timeless set of 20 sided wonders", inventory: 43, supplier_id: 1},
  {name: "Yoda sleeping bag", price: "150.0", description: "For real", inventory: 3, supplier_id: 2},
  {name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", inventory: 15, supplier_id: 1}
])

Image.create!([
  {url: "http://www.notcot.com/images/guide.gif", product_id: 1},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 2},
  {url: "https://upload.wikimedia.org/wikipedia/commons/1/14/Lightsaber%2C_silver_hilt%2C_blue_blade.png", product_id: 2},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 3},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 4},
  {url: "https://m.media-amazon.com/images/I/81KYQq0Rg6L._AC_SL1500_.jpg", product_id: 4},
  {url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png", product_id: 5},
  {url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg", product_id: 6},
])

ProductCategory.create!([
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 3},
  {product_id: 3, category_id: 3},
  {product_id: 6, category_id: 2}
])

Order.create!([
  {
    user_id: 1,
    subtotal: nil,
    tax: nil,
    total: nil
  }
])

CartedProduct.create!([
  {
    user_id: 1,
    product_id: 1,
    order_id: 1,
    quantity: 2,
    status: "purchased"
  },
  {
    user_id: 1,
    product_id: 3,
    order_id: 1,
    quantity: 2,
    status: "purchased"
  },
  {
    user_id: 2,
    product_id: 4,
    order_id: nil,
    quantity: 1
  }
])