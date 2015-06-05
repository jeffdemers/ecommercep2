# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


category = Category.create([{name: "Electronics", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus", image: "http://sustainablog.org/wp-content/uploads/2012/02/home-electronics.jpg", rank:1},
                            {name: "Pets", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus", image: "https://chattacks.com/file/pic/photo/2014/02/Administrator-Chattacks:%20Pets%20&%20Animals%20Tack%20Category_1024.jpg", rank:2},
                           {name: "Home", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus", image: "http://3.bp.blogspot.com/_0pc6HohhYv4/S6jCTq9aVvI/AAAAAAAAAc4/_mPc3FZNEF8/s400/dimple+couch+white+background.jpg", rank:3},
                           {name: "Outdoor", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus", image: "http://housetohome.media.ipcdigital.co.uk/96/00000e701/9db2_orh550w550/Ikea6.jpg", rank:4},
    {name: "Clothing", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus", image: "http://wallpaperswa.com/thumbnails/detail/20130513/women%20miranda%20kerr%20dress%20models%20white%20background_wallpaperswa.com_7.jpg", rank:5},
    {name: "Jewelry", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus", image: "https://c2.staticflickr.com/6/5486/10311078836_59efa5e12c_b.jpg", rank:6}])