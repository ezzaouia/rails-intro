class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date

  def self.all_ratings
 #   {'G'=>1,'PG'=>1,'PG-13'=>1,'R'=>1,'NC-17'=>1}
     ['G','PG','PG-13','R','NC-17']
  end

end
