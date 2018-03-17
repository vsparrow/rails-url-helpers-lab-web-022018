Rails.application.routes.draw do
  # resources :students, only: :index
  resources :students, only: [:index,:show]
  # resources :active_
  # get '/students/:id/active', to: 'students#activate' #, as: 'activate'
  # resources :activate_student
  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  # get "students/:id/activate", to: "students#activate"
   get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
# COMPLETED
# A user should be able to navigate to /students to view all of the students.
#
# A user should be able to click the student's name on the index page and be taken to that specific student's show page.

#
# Create a new boolean attribute called active in the students table. (HINT: You might have to search around for
#   the best way to set a (ahem) default value.)
#

# ********************* NEED ACTION

# A user should be able to go to /students/:id/activate to toggle their active attribute between true and false.
#
# Read the failing tests and modify the code until they pass.


######################################## maybe done
# Make sure the show path is /students/:id, where :id is a route variable.

#
# Call the Student class instance method to_s on each of the students on the index page so that each student element
# contains their first and last name.
#
# On the student index page, test out all three different link_to argument options,
#  e.g.: link_to "post", "/post/#{post.id}", link_to("post", post_path(post.id)), link_to("post", post_path(post)).
