require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///to_do_class_app.db"

get "/" do
	erb :"School/new"
end

get "/schools/new" do
	# @new_school = School.new
	erb :"School/new"
end

get "/schools/index" do
	erb :"School/index"
end

get "/schools/delete" do
	erb :"School/edit"
end

get "/schools" do
	@schools = School.all
	erb :"School/index"
end

get "edit/school" do
	erb :"School/edit"
end

get "add/school" do
	erb :"School/new"
end

get "/error/event" do
	erb :"Event/show"
end

get "/confirm/event" do
	erb :"Event/show"
end

get "/delete/event" do
	erb :"Event/edit"
end

get "/" do
	erb :"Event/index"
end

get "/event" do
	erb :"Event/index"
end

get "edit/event" do
	erb :"Event/edit"
end

get "add/event" do
	erb :"Event/new"
end

post "/events/search" do
end

post "/events/" do
end

post "/schools/search" do
end

post "/schools/new" do
	@school = School.new (params[:description])
	@school.save
	redirect "schools/#{@school.id}"
end


# delete do
# end

# put do
# end


class School < ActiveRecord::Base


	def edit_school
	end

end

class Event < ActiveRecord::Base


	def edit_event
	end

end

