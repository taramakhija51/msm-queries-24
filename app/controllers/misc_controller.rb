class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end
  def directors
    @directors = Director.all
    render({ :template => "misc_templates/directors"})
  end
  def youngest_director
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
   
    render({ :template => "misc_templates/youngest_director"})
  end
  def eldest_director
    @eldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    
    render({ :template => "misc_templates/eldest_director"})
  end
  def movies
    @movies = Movie.all
    render({ :template => "misc_templates/movies"})
  end
  def actors
    @actors = Actor.all
    render({ :template => "misc_templates/actors"})
  end
end
