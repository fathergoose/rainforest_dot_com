#Product.create!([
#  {name: "USB 3.0 flash drive--64GB", unit_cost: 11, price: 2500, image: "http://www.corsair.com/~/media/Corsair/Product-Photo-Root/F/fvgs_hero_1.png", description: "64GB of super-fast flash storage where you need it"},
#  {name: "Dell Precision T-3500", unit_cost: 200, price: 125, image: "http://mans.io/images/1003681/1013883.jpg", description: "A pre-used but still powerful xeon powered workstation with Ubuntu-LINUX"},
#  {name: "Coffee Cozy", unit_cost: 5, price: 5, image: "https://s-media-cache-ak0.pinimg.com/736x/ba/0d/e8/ba0de82b8d7fbb40edde067ec94f9a98.jpg", description: "Hand knitted coffee cozy "},
#  {name: "Box of paper", unit_cost: 500, price: 700, image: "pier_paperhttps://www.cadsnet.co.uk/media/catalog/product/c/o/co.jpg", description: "Awesome box of premium 20 lb laser paper, 8.5x11"},
#  {name: "Even larger hat", unit_cost: 10, price: 50, image: "http://www.thinkgeek.com/images/products/zoom/11af_4th_doctors_hat.jpg", description: "Its a beautiful brown hat with a large brim and made of felt--Buy today, don't delay!"},
#  {name: "Office Chair", unit_cost: 45, price: 110, image: "http://www.d-b-m.org/wp-content/uploads/2015/09/Cheap-Office-Chairs-Executive.jpg", description: "A sturdy and comfortable chair for office workers who like to sit down"},
#  {name: "Pizza", unit_cost: 5, price: 10, image: "http://www.mysticpizza.com/admin/resources/pizza-pepperoni-w857h456.jpg", description: "A delicious pepperoni pizza with cheese and sauce--yum."}
#])
# Modified the seeds to work with new schema
Product.create!([
  {name: "USB 3.0 flash drive--64GB", unit_cost: 11, price: 2500, description: "64GB of super-fast flash storage where you need it"},
  {name: "Dell Precision T-3500", unit_cost: 200, price: 125, description: "A pre-used but still powerful xeon powered workstation with Ubuntu-LINUX"},
  {name: "Coffee Cozy", unit_cost: 5, price: 5, description: "Hand knitted coffee cozy "},
  {name: "Box of paper", unit_cost: 500, price: 700, description: "Awesome box of premium 20 lb laser paper, 8.5x11"},
  {name: "Even larger hat", unit_cost: 10, price: 50, description: "Its a beautiful brown hat with a large brim and made of felt--Buy today, don't delay!"},
  {name: "Office Chair", unit_cost: 45, price: 110, description: "A sturdy and comfortable chair for office workers who like to sit down"},
  {name: "Pizza", unit_cost: 5, price: 10, description: "A delicious pepperoni pizza with cheese and sauce--yum."}
])
