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
  
  def director_details
      @id = params.fetch("id")
      @director = Director.all.where({ :id => @id}).at(0)
      @movies = Movie.where({ :director_id => @director.id})
  render({ :template => "misc_templates/director_details"})
  end 

  def movie_details
    @id = params.fetch("id")
    @movie = Movie.all.where({ :id => @id}).at(0)
    @director = Director.where({ :id => @movie.director_id}).at(0).name
    

  render({ :template => "misc_templates/movie_details"})
  end 

  def actor_details
    @id = params.fetch("id")
    @movie = Movie.all.where({ :id => @id}).at(0)
    @actor = Actor.all.where({ :id => @id}).at(0).name
  render({ :template => "misc_templates/actor_details"})
  end 
end

# def director
# x = self.director_id
# matching_records = Director.where({ :id => x})
# y = matching_records.first
# return y
# end

# =
# belongs_to(:director, class_name: "Director", foreign_key: "director_id")
