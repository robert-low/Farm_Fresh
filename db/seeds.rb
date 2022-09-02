require "open-uri"

puts "Cleaning database ..."
Product.destroy_all
User.destroy_all
puts "Creating products ..."

user_1 = User.create!(
  email: "fakefruitfanatic@mail.com",
  password: "wherenext"
)

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd02e4190b-5847-48e6-b1e4-7c0dc55dfc54.jpg")
product = Product.new(
  name: "Crab",
  mini_description: "Good in a pinch",
  overview: "Medium-sized crab, very life-like. Resist the urge to boil. Made of plastic.",
  price: 2.50,
  location: "SW5 0BE",
  user: user_1
)
product.image_url.attach(io: file, filename: "crab.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd403a2e52-88cb-48fc-93fb-779d06af4415.jpg")
product = Product.new(
  name: "Red Velvet Cake Gateau",
  mini_description: "Gateau get this!",
  overview: "Delicious sythetic foam goodness",
  price: 16.50,
  location: "RH4 3GB",
  user: user_1
)
product.image_url.attach(io: file, filename: "gateau.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd470ebe79-d1e9-47db-ab51-2685d7ebf452.jpg")
product = Product.new(
  name: "Plastic donuts",
  mini_description: "J-dillacious",
  overview: "3-pack. Custard not included, consume at your own risk",
  price: 12,
  location: "72 Staines Road West, Sunbury on Thames, TW16 7DR",
  user: user_1
)
product.image_url.attach(io: file, filename: "donuts.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd5bf8ec5b-6eae-4d55-9ed6-dbfb3567f6c6.jpg")
product = Product.new(
  name: "Spritz Cocktail",
  mini_description: "Yummy!",
  overview: "Made with resin. We gettin' crunk baby",
  price: 7,
  location: "14 Sarah Gardens, Walsall, WS5 4PP",
  user: user_1
)
product.image_url.attach(io: file, filename: "spritz.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd0ad226f5-6123-4efe-b116-437afd851c37.jpg")
product = Product.new(
  name: "Pigs trotter",
  mini_description: "Trot on the wild side",
  overview: "Covering all your pig trotter needs, may they be many",
  price: 42,
  location: "37 Hameldown Close, Torquay, TQ2 7JJ",
  user: user_1
)
product.image_url.attach(io: file, filename: "pig-trotter.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd00e0dad3-ac93-412c-a787-1f9f5d3576fa.jpg")
product = Product.new(
  name: "Padano Cheese Wheel",
  mini_description: "Smell my cheese",
  overview: "Designed by Massimo Bottura",
  price: 38,
  location: "25 Bure Valley Close, Norwich, NR10 5HL",
  user: user_1
)
product.image_url.attach(io: file, filename: "cheese.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prd02e4190b-5847-48e6-b1e4-7c0dc55dfc54.jpg")
product = Product.new(
  name: "Crab",
  mini_description: "Feeling crabby",
  overview: "Medium-sized crab, very life-like. Made of plastic measuring and measuring 20 x 13cm.",
  price: 2.50,
  location: "10 Warren Grove, Thornton-Cleveleys, FY5 3TX",
  user: user_1
)
product.image_url.attach(io: file, filename: "crab.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prda28d60d9-2e90-4764-83af-d0a6d54111a7.jpg")
product = Product.new(
  name: "British Meat Selection",
  mini_description: "Feeling meaty - raw",
  overview: "Basket of raw meat? anyone?",
  price: 50,
  location: "48 Ladeside Terrace, Brodick, KA27 8EW",
  user: user_1
)
product.image_url.attach(io: file, filename: "raw-meat.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prdeb15828a-1257-4ca1-a022-1cfed36bdfa4.jpg")
product = Product.new(
  name: "Small Potato - Pk.3",
  mini_description: "This is small fries",
  overview: "plastic spuddy straight from the muddy",
  price: 8,
  location: "Flat 5, 29 York Street, Twickenham, TW1 3JZ",
  user: user_1
)
product.image_url.attach(io: file, filename: "ice-cream.jpg", content_type: "image/jpg")
product.save!

file = URI.open("https://www.props4shows.co.uk/Portals/1/product/images/prde8140c40-acae-44e4-b083-5a3b2328be90.jpg")
product = Product.new(
  name: "Corn Cob Skewer Kebab",
  mini_description: "Korny joke here",
  overview: "Barbequed or out of date? you be the judge",
  price: 10,
  location: "12 King Street, East Grinstead, RH19 3DJ",
  user: user_1
)
product.image_url.attach(io: file, filename: "corn.jpg", content_type: "image/jpg")
product.save!

puts "Products created!"
