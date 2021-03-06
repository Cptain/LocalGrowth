# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


fun_categories = FunCategory.create([{ title: 'Club'},{ title: 'Bar'},{title: 'Sport'}])
fun_subcategories = FunSubcategory.create([{title: 'After'},{title: 'Rock-bar'},
  {title: 'Cafe-bar'},{title: 'Pub'},{title: 'Football Court'},{title: 'Tenis Court'}])
fun_shops = FunShop.create ([
  {fun_category_id: 1, title: 'Trinity', description: "The ultimate clubbing experience", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {fun_category_id: 1, title: 'W', description: "Enjoy the aftersound", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {fun_category_id: 2, title: 'Roots', description: "Chill and Enjoy", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {fun_category_id: 2, title: 'Celebrity', description: "All the cool kids come here", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {fun_category_id: 2, title: 'Local pub', description: "Beer beer beer!!", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {fun_category_id: 3, title: 'Local Sportsclub', description: "Every sport you'll need", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'}])

fun_subcategorizations = FunSubcategorization.create([{fun_subcategory_id:1,fun_shop_id:2},{fun_subcategory_id:2,fun_shop_id:1},{fun_subcategory_id:2,fun_shop_id:5},{fun_subcategory_id:4,fun_shop_id:5},
  {fun_subcategory_id:3,fun_shop_id:3},{fun_subcategory_id:5,fun_shop_id:6},{fun_subcategory_id:6,fun_shop_id:6}])

food_categories = FoodCategory.create([{ title: 'Italian'},{ title: 'Fast Food'},{title: 'Greek'}])
food_subcategories = FoodSubcategory.create([{title: 'Take out'},{title: 'All you can eat'},
  {title: 'Delivery'}])
food_shops = FoodShop.create ([
  {food_category_id: 1, title: 'Pizza Italia', description: "The best pizza in town", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {food_category_id: 1, title: 'Enzo', description: "Italian food right in the corner", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {food_category_id: 3, title: 'Η ταβέρνα του λευτέρη', description: "Greek food that you will love", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {food_category_id: 2, title: 'Goodies', description: "Fast n tasty", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {food_category_id: 2, title: 'BurgerKing', description: "The best burger around", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'}])

food_subcategorization= FoodSubcategorization.create([{food_subcategory_id:3,food_shop_id:1},{food_subcategory_id:1,food_shop_id:1},{food_subcategory_id:1,food_shop_id:2},
  {food_subcategory_id:3,food_shop_id:4},{food_subcategory_id:3,food_shop_id:5},{food_subcategory_id:2,food_shop_id:4},{food_subcategory_id:1,food_shop_id:5}])

other_categories = OtherCategory.create([{ title: 'Supermarket'},{ title: 'Book Store'},{title: 'Groseries'}])
other_subcategories = OtherSubcategory.create([{title: 'Toys'},{title: 'Fresh vegetables'},
  {title: 'Ready Food'}])
other_shops = OtherShop.create ([
  {other_category_id: 2, title: 'The corner Bookstore', description: "You name it and we find it", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Lidl', description: "Where the price meets quality", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Jumbo', description: "Toys and much much more", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Ikea', description: "All you need for your house", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'},
  {other_category_id: 2, title: 'Comic Bookstore', description: "Superheroes? Villains? Action Figures? We've got them all", logo_url: "logo/no-logo.png", address: "None", working_hours: '8:00-4:00'}])

other_subcategorization= OtherSubcategorization.create([{other_subcategory_id:1,other_shop_id:2},{other_subcategory_id:2,other_shop_id:2},{other_subcategory_id:3,other_shop_id:4}])

users = User.create([{username: 'Batman', email: 'batman@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'},
  { username: 'Jbond', email: 'jamesbond@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'},
  {username: 'Snowden', email: 'snowden@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'},
  {username: 'DHH', email: 'DHH@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'},
  {username: 'Vspilka', email: 'vspilka@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'}
  ])

admins = Admin.create([{email: 'admin@admin.com',password: 'admin_password',password_confirmation: 'admin_password'}])

# Still need to create sample Events likes ,follows and attends

events = Event.create([{event_url:'no-image.jpg',title: 'Roots Reggae at Roots', description:'Roots Reggae , dj ChillyWingz', eventable_id: 3, eventable_type:"FunShop",starts_at: '28/12/2013 20:30'},
  {event_url:'no-image.jpg',title: 'The Ultimate Booksale', description:'Old and new books really cheap, only at the corner bookstore for 2 weeks', eventable_id: 1, eventable_type:"OtherShop", starts_at: '13/1/2014', ends_at: '27/1/2014'}])


deals = Deal.create([{deal_url:'no-image.jpg',title: 'Pizza Frenzy', description:'With every Pizza the second is on us',dealable_id: 1, dealable_type: "FoodShop", starts_at:'Every Friday'},
  {deal_url:'no-image.jpg',title: 'All you can eat at Leuteris', description:'With every Pizza the second is on us',dealable_id: 3, dealable_type: "FoodShop", starts_at:'Every Sunday'}])

ads = Ad.create([{ad_url:'no-image.jpg',title: 'Trinity the ultimate clubbing experience', description:'Daily House/RnB, Fridays and Saturdays quest DJ SoundBlast', adable_id: 1, adable_type: "FunShop" },
  {ad_url:'no-image.jpg',title: 'Roots Rock-bar', description:'Chill out with relaxing music', adable_id: 3, adable_type: "FunShop" }])


comments = Comment.create([{username: 'Snowden', email: 'snowden@gmail.com', content: 'This place is awsome, They will never find me here :D'}])

relationships = Relationship.create([{follower_id:5, followed_id: 4},{follower_id:5, followed_id: 3}])
likes = Like.create([{user_id: 3,likeable_id:3 , likeable_type: "FunShop"},{user_id: 4,likeable_id:3 , likeable_type: "FunShop"}])
attendings = Attending.create([{user_id: 3, event_id:1},{user_id: 4, event_id:1},{user_id: 5, event_id:1}])
