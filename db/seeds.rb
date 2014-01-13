# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create!(title: 'CoffeeScript',
                description:
                    %{<p>
                          CoffeeScript is JavaScript done right. It provides all of JavaScript's
	                        functionality wrapped in a cleaner, more succinct syntax. In the first book
                          on this exciting new language, CoffeeScript guru Trevor Burnham show you how
                          to hold onto all the power and flexibility of JavaScript while writing
                          clearer, cleaner, and safer code.
                     </p>},
                image_url:   'coffee.jpg',
                price: 36.00)
# . . .
Product.create!(title: 'Learning Python 2.7 & 3.3',
                description:
                    %{<p>
                          Python is a popular open source programming language used for both standalone pro-
                          grams and scripting applications in a wide variety of domains. It is free, portable, pow-
                          erful, and is both relatively easy and remarkably fun to use. Programmers from every
                          corner of the software industry have found Python’s focus on developer productivity
                          and software quality to be a strategic advantage in projects both large and small.
                     </p>},
                image_url: 'python.jpg',
                price: 49.95)
# . . .

Product.create!(title: 'The Definitive Guide to Django',
                description:
                    %{<p>
                          At its best, Web development is an exciting, creative act; at its worst, it can be a repeti-
                          tive, frustrating nuisance. <em>Django</em> lets you focus on the fun stuff—the crux of your Web
                          application—while easing the pain of the repetitive bits.
                      </p>},
                image_url: 'django.jpg',
                price: 34.95)