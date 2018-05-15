#Placeholder for a model

class Post < ActiveRecord::Base

  attr_accessor :name, :content

  # POSTS = []
  @@all = []

  def initialize(params)
    @name = params[:name]
    @content = params[:content]
    # POSTS << self
    @@all << self
  end

  def self.all
    POSTS
  end

  def self.clear
    POSTS.clear
  end

end
