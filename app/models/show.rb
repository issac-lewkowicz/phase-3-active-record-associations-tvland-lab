class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors.map(&:full_name)
      #full_name is our custom method from Actor class
    
  end

end