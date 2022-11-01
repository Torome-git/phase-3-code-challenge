require_relative "./article.rb"
require_relative "./magazine.rb"

class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    unique_array = Article.all.select do |article|
      article.author == self
    end
    unique_array.map do |article|
        article.magazine
    end.uniq
  end

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

  def topic_areas
    unique_array = Article.all.select do |article|
      article.author == self
    end
    unique_array.map do |article|
      article.magazine.category
    end.uniq
  end
end
