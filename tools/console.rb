require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("soila")
author2 = Author.new("Lavine")
mag1 = Magazine.new("lifestyle", "love")
mag2 = Magazine.new("Forbes", "money")
article1 = Article.new(author1, mag1, "Daily Nation")
article2 = Article.new(author2, mag2, "New York Times")







### DO NOT REMOVE THIS
binding.pry

0
