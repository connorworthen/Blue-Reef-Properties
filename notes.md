step 2: start models, controllers, views, migrations for listings, cart, bookmarks,
from there build button for links and ability to search within set params

listings migration
address:string
city:string
zipcode:string
state:string
country:string
bedroom:integer
bathroom:integer
price:integer
square_feet:integer

listing model
belongs_to :user
