require_relative 'database_config'
require_relative 'models/business'
require_relative 'models/category'
require_relative 'models/comment'
require_relative 'models/listing'
require_relative 'models/message'
require_relative 'models/user'

Automotive = ["Agricultural Used Motor Oil","Antifreeze","Automobile Parts","Automotive Bumpers","Brake Fluid","Car","Car Donation","Catalytic Converters","Gasoline and Unwanted Fuels","Lead Acid (Pb) Batteries","Miscellaneous Tools","Motors","Oil Filters","Radiators","Transmission Fluid","Used Motor Oil","Used Oil Filters","Used Tires"]

Construction = ["ABS Plastic","AC Power Plugs","Brick(s)","Broken Asphalt/Aggregate","Carpet","Carpet Padding","Ceiling Tiles","Ceramic Tiles","Concrete (Set)","Construction Materials","Construction Materials (Reuse)","Drywall","Empty Paint Cans","Latex Paint","Linoleum","Lumber","Oil-Based Paint","Paint Donation","Paint Thinner","Porcelain","Roofing Materials","Sawdust","Shingles","Soil","Stone","Windows","Wood"]

Electronics = ["Air Conditioners","Amps & Effects","Audio Mixers","Blu-Ray Players","CD/DVD/Blu-ray/UHD discs","Cables & Connectors","Calculator","Cameras","Car Audio/Video Equipment","Cell Phones","Computer (Recycling)","Computer (Reuse)","Computer Monitors","Computer Peripherals","Curling/Flat Irons","DLP & LCD Light Bulbs","DVD Players/Blu-Ray Players/DVRs","Dehumidifiers","Digital Converter Boxes","E-Readers","Electric Motors","Electric Razors","Electronics","Fans","Floppy Disks","GPS Units","Hair Dryers","Hard Drives","Headphones","Hearing Aids","Holiday Lights","Incandescent Light Bulbs","Inkjet Printer Cartridges","Laptop Computers","Laser Toner Cartridges","MP3 Players","Medical Equipment","Memory (RAM), Flash Card/Drive","Microwaves","Network Equipment","Office Equipment","Pedometers/Heart Monitors","PlayStation Consoles","Portable Media Players","Power Supplies","Printers/Scanners/Fax Machines","Projectors","Refrigerators","Remotes","Reusable Appliance Donation","Satellite Components","Servers","Small Appliances","Small Electronics","Small Televisions","Speakers","Stereo Equipment","TV Antennas (Indoor)","Tablets","Telephones","Televisions","Turntables","UPS Batteries/Backup Systems","VCRs","VHS & Cassette Tapes","Video Game Consoles","Video Game Systems","Video Games","Watches"]

Glass = ["Glass (Blue)","Glass (Brown)","Glass (Clear)","Glass (Green)","Glass (Other)"]

Metal = ["Aerosol Spray Cans","Aluminum","Aluminum Cans","Bike Parts","Clothes Hangers (Metal)","Ferrous Metals (Steel or Iron)","High-Temp Alloys","Jewelry","Keys","Large Household Appliances","Non-ferrous (Copper/Brass/Tin)","Office Furniture","Portable Metal Sewing Machines","Propane Tanks","Scrap Metal","Special Metals","Tin or Steel Cans","Wire"]

Paper = ["Book Recycling","Brown Paper Bags","Cardboard","Catalogs","Computer Paper","Documents to Shred","Drink Boxes","Gift Boxes","Greeting Cards","Hot Cereal Pouches","Magazines","Milk Cartons","Newspapers","Office Paper","Paper (Mixed)","Paper Egg Cartons","Paper Residue","Paperboard","Phone books","Pizza Boxes","Shredded Paper","Unused Paper"]

Plastic = ["#6 Plastic Cups","Air Care Packaging","Athenos Packaging","Baby Food Pouches","Bear Naked Packaging","Bubble Wrap (Reuse)","CD/DVD/Blu-ray/UHD Cases","Cereal Bags","Cheese Packaging","Cleaner Packaging","Corrugated Plastic Yard Signs","Dairy Tubs","Diaper Packaging","Dropps Laundry Pouches","Entenmann's Pouches","Expanded Polystyrene Packaging (EPS)","Extruded Polystyrene","Fishing Line","Food Storage Bags","Food Storage Containers","Gift Cards","Glue Bottles & Glue Sticks","Hummus Packaging","LEGOs","Lunch Kits","Nespresso Capsules","Packing Peanut (Reuse)","Personal Care Packaging","Plant Trays, Pots & Tags","Plastic #1 (PETE)","Plastic #2 (HDPE)","Plastic #3 (PVC)","Plastic #4 (LDPE)","Plastic #5 (Polypropylene)","Plastic #6 (Polystyrene)","Plastic #7","Plastic Bottle Caps","Plastic Film","Plastic Shopping Bags","Plastics (Other)","Polyethylene Foam (PE)","Rigid Plastics","Snack Pouches","Tape Dispensers","Tooth Care Packaging","Toothbrushes","Water Filters","Yoga Mats"]

Hazardous = ["Asbestos","Compact Fluorescent Lights","Degreasers","Dental Amalgam","Fertilizer","Fire Extinguishers","Fluorescent Lamps/Tubes","Fungicides","Glue & Adhesives","HID Lamps","Herbicides","Household Cleaners","Insecticides","Medical Waste","Mercury Containing Items","Nail Polish","Needles / Medical Sharps","Non PCB Ballasts","Outdated Medications","PCB Ballasts","Pesticides","Photography Chemicals","Pool Chemicals","Smoke Detector","Solvents","Swap Shop"]

Organic = ["Brush","Compostable Paper","Cut Flowers","Food Scraps","Grass Clippings","Hay","Leaves","Manure","Organic Waste","Spent Mushroom Substrate","Tree Trimmings","Weeds","Wood Chips","Yard Waste"]

Household = ["Adult Toy","Arts & Crafts Supplies (Reuse)","Baby Gear","Bags & Belts","Bed Mattresses","Bike Accessories","Bike Inner Tubes","Bikes","Binders","Binoculars","Books (Reuse)","Box Springs","Bras","Brita Pitchers & Filtration","Candy Wrappers","Child Safety Seats","Children's Toys","Chip Bags","Clothing","Coffee Bags","Cooking Oil","Cork","Crayons","Denim","Drink Pouches","E-Cig Cartridges","Exercise Equipment","Eyeglasses","Flags","Furniture","Graduation Gowns","Household Goods","Lawn Equipment","Markers","Musical Instruments","Office Supplies","Ornaments","Oyster Shells","PUR Pitchers, Faucet Mounts, Filters & Packaging","Packing Materials","Purses, Handbags, & Totes","Respiratory Inhalers","Shoes","Sporting Goods","Tennis Balls","Textiles","Vacuum Cleaners","Vases","Wallets","Water Filtration - Faucet Mounts & Pitchers","Writing Instruments"]

Packaging = ["Cookie & Cracker Wrappers","Energy Bar Wrappers","GO Box","Naked Grape Packaging","Snack Bags","TASSIMO Packaging"]


# seeding categories table

categories = ["Automotive",
"Construction",
"Electronics",
"Glass",
"Metal",
"Paper",
"Plastic",
"Hazardous",
"Organic",
"Household",
"Packaging"]

categories.each do |category|
    newCat = Category.new
    newCat.title = category
    newCat.save
end

# --------------------------

# seeding users

10.times do
    new_user = User.new
    new_user.username = (0...8).map { (65 + rand(26)).chr }.join
    new_user.email = "#{ (0...8).map { (65 + rand(26)).chr }.join }.#{  (0...8).map { (65 + rand(26)).chr }.join  }#{rand(252...4350)}@#{["Google.com","Yahoo.com","AOL.com"].sample}"
    new_user.password_digest = (0...10).map {rand(0...9) }.join
    new_user.mobile_number = (0...10).map {rand(0...9) }.join
    new_user.save
end    


# --------------------------

# seeding listings

200.times do
    new_listing = Listing.new
    new_listing.title = 
    new_listing.title = 
    new_listing.title = 
    new_listing.title = 
    new_listing.title = 
    new_listing.title = 
    new_listing.save
end

# --------------------------

# seeding messages