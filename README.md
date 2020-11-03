# Object Relations Practice

## Installation

Clone this repo from Github. CD into the main directory using your console and
run `bundle install` to install all Gem dependencies.

BAKERY DELIVERABLES
Deliverables
You are building an app for a national bakery chain

your models are Bakery, Dessert, Ingredient, along with any join tables you may need.
a Bakery has many Desserts
a Dessert belongs to a Bakery
a Dessert has many Ingredients
an Ingredient can be used in many Desserts
every Ingredient has a calorie count
Draw out your schema first. Write out the relationships using has_many, belongs_to and has_many_through.

Create the necessary methods to connect these classes. You should do all the easier methods first (often the ones that are about a single class, as opposed to a method using two or more classes). Going top to bottom is probably not your best strategy!

Bakery
#ingredients
should return an array of ingredient objects for the bakery's desserts
#desserts
should return an array of dessert objects the bakery makes
#average_calories
should return a float totaling the average number of calories for the desserts sold at this bakery
.all
should return an array of all bakeries
#shopping_list
should return a string of names for ingredients for the bakery

Desserts
#ingredients
should return an array of Ingredient objects for the dessert
#bakery
should return the Bakery object for the dessert
#calories
should return a float totaling all the calories for all the ingredients included in that dessert
.all
should return an array of all dessert objects

Ingredients
#dessert
should return an array of all dessert objects that use this ingredient
#bakeries
should return the bakery objects for the bakeries that use that ingredient
.all
should return an array of all ingredients
.find_all_by_name(ingredient)
should take a string argument and return an array of all ingredients that include that string in their name
.find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')






## Exercises

This repo contains domains for practicing building Object-Oriented
Relationships. The descriptions for these exercises are located in the
`exercises` directory. At the top of each file is a level indicating  the difficulty level
of the domain. Harder levels include more models or more
complex relationships. The harder models also include less explicit instructions
about what methods to write. You should work to derive the methods that need to
be defined from the relationship information given.

#### Average

- [Airbnb](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/airbnb.md)
- [Bakery](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/bakery.md)
- [Lyft](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/lyft.md)

#### Challenging

- [IMDB](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/imdb.md)
- [Crowdfunding](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/crowdfunding.md)
- [Gym](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/gym.md)

## Writing Code

You should write all your code for these domains in files in the `app/models`
directory. You can create models for all of the challenges in there. If you name
the models as specified, none of the exercises should conflict with each other.

## Testing Your Code

We've provided you with a console that you can use to test your code. Write all
your code in the `app` folder so that it is loaded into the environment. To
enter a console session, run `ruby tools/console.rb`. You'll be able to test out
the methods that you write here.

## Creating Relationships

The complex relationships are not simple has_many_through or join relationships,
so take the time to plan them out and draw them. If you see multiple ways to
build those relationships, try both of them and see if you can identify benefits
and weaknesses to each of those domain models. During project mode (and as a
working developer) you will be responsible for building out domain models to
represent real-world situations. A poorly thought out domain can lead to brittle
code that requires a lot of maintenance and rewriting in the future.
