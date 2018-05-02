Product.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(title: 'Routines with Amy Evans',
    description:
      %{
       You are purchasing a copy of Routines with Amy Evans which will be available for instant download. 
       All associated bonuses including a free ebook 'A Guide to Eating with Illness' and audio versions 
       will be sent to your inbox shortly after purchase. 
        },
    image_url: 'amyebook.png',
price: 14.99) 

Product.create!(title: 'Routines with Dara Hayes',
    description:
      %{
        You are purchasing a copy of Routines with Dara Hayes which will be available for instant download.
        },
    image_url: 'Dara_tile3.png',
price: 11.99) 
