# Please copy/paste all three classes into this file to submit your solution!
class Article
    attr_reader :author, :magazine, :title
    
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def title
        @title
    end

    def self.all
        @@all
    end


end

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
class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def name
      @name
    end
  
    def category
      @category 
    end
    
    def self.all
      @@all
    end
  
    def contributors
      array = Article.all.select do |article|
        article.magazine == self
      end
      array.map do |article|
        article.author
      end
    end
  
    def find_by_name(name)
      self.all.find do |magazine|
        magazine.name == name
      end
    end
  
    def article_titles
      array = Article.all.select do |article|
        article.magazine == self
      end
      array.map do |article|
        article.title
      end
    end
  
    def contributing_authors
      self.contributors.select do |author|
        author.articles.count >= 2
      end
    end
end
  
  