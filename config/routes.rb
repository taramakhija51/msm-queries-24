Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "directors" })
  get("/directors/youngest", { :controller => "misc", :action => "youngest_director" })
  get("/directors/eldest", { :controller => "misc", :action => "eldest_director" })
  get("/movies", { :controller => "misc", :action => "movies" })
  get("/actors", { :controller => "misc", :action => "actors" })
  get("/directors/:id", { :controller => "misc", :action => "director_details" })
  get("/actors/:id", { :controller => "misc", :action => "actor_details" })
  get("/movies/:id", { :controller => "misc", :action => "movie_details" })
end
