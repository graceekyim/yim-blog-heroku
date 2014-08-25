# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Grace", last_name: "Yim", email: "grace@grace.com", password: "testing", password_confirmation: "testing")
User.create(first_name: "Bobo", last_name: "Yim", email: "bobo@bobo.com", password: "testing", password_confirmation: "testing")

test = Faker::Lorem.words(4).join(" ")
Post.create(title: test, user_id: 1,
	content: "DIY selfies Intelligentsia, iPhone kale chips asymmetrical next level Brooklyn street art VHS 90's pug occupy. Quinoa Truffaut flexitarian chia paleo, Carles drinking vinegar DIY shabby chic irony. Williamsburg High Life roof party mustache, Godard farm-to-table disrupt pug. XOXO pickled artisan vegan, Carles letterpress selfies DIY organic tote bag wolf disrupt slow-carb sartorial. Hashtag kitsch literally readymade, normcore street art pug try-hard photo booth locavore. Trust fund craft beer quinoa, church-key before they sold out 90's twee whatever American Apparel chambray raw denim. Kickstarter American Apparel Shoreditch viral disrupt, selfies sustainable hashtag.")

test = Faker::Lorem.words(4).join(" ")
Post.create(title: test, user_id: 2,
	content: "Ethnic synth hashtag, iPhone salvia flexitarian tousled locavore Echo Park flannel ethical biodiesel squid leggings tote bag. Cliche High Life biodiesel lomo. Shoreditch disrupt Tonx VHS pop-up, Truffaut you probably haven't heard of them meggings raw denim synth sustainable flannel Marfa. Keffiyeh fixie squid narwhal fashion axe gluten-free, master cleanse put a bird on it post-ironic synth. Small batch fashion axe kale chips salvia, literally Williamsburg fixie jean shorts biodiesel Shoreditch messenger bag Marfa wayfarers. Try-hard paleo gentrify American Apparel, next level twee Intelligentsia. Try-hard street art next level banh mi locavore, banjo 90's actually sriracha fashion axe polaroid mixtape stumptown.")

test = Faker::Lorem.words(3).join(" ")
Post.create(title: test, user_id: 2,
	content: "Paleo Kickstarter narwhal, shabby chic lomo VHS bespoke PBR&B Williamsburg locavore gastropub. Echo Park cardigan crucifix try-hard narwhal leggings. Next level Godard chillwave skateboard whatever cray tofu, gentrify XOXO lo-fi. Austin you probably haven't heard of them Neutra deep v chambray. Deep v cliche occupy narwhal, biodiesel master cleanse Kickstarter mumblecore keytar PBR gastropub bitters meggings gentrify pickled. Tattooed Intelligentsia chillwave cornhole Tonx, scenester ugh quinoa. Sustainable ennui fixie wayfarers.")


test = Faker::Lorem.words(4).join(" ")
Post.create(title: test, user_id: 1,
	content: "Swag yr pork belly, authentic raw denim tofu seitan High Life craft beer McSweeney's plaid cornhole fashion axe Thundercats chillwave. Small batch tousled retro, fixie Pitchfork cornhole hoodie flexitarian photo booth hashtag art party XOXO tattooed bicycle rights lomo. Vegan single-origin coffee skateboard, McSweeney's 90's mumblecore banh mi Shoreditch tofu kitsch slow-carb beard. Bitters Portland put a bird on it narwhal paleo, aesthetic PBR&B tofu jean shorts stumptown single-origin coffee biodiesel fashion axe blog. Disrupt gluten-free before they sold out keffiyeh, Neutra Odd Future Cosby sweater butcher. Deep v disrupt fingerstache try-hard, paleo Schlitz skateboard. Butcher bitters 90's shabby chic fixie.") 

test = Faker::Lorem.words(3).join (" ")
Post.create(title: test, user_id: 1,
	content: "Fanny pack 3 wolf moon ennui retro, 90's stumptown shabby chic brunch crucifix yr Tumblr polaroid. DIY shabby chic wayfarers mumblecore single-origin coffee Williamsburg, American Apparel banjo biodiesel pickled fashion axe. Hella biodiesel McSweeney's Tumblr, viral fashion axe kogi bespoke Banksy Echo Park mixtape whatever. DIY butcher synth, lomo Kickstarter hella Godard brunch mixtape 8-bit. Irony Portland fap synth Cosby sweater brunch, American Apparel ethical Vice PBR&B. McSweeney's mlkshk flannel, whatever flexitarian chillwave disrupt bespoke keytar. Vice letterpress synth, four loko Tonx wayfarers Thundercats blog.")


