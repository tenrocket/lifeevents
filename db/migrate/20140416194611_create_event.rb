class CreateEvent < ActiveRecord::Migration
  def change
  	create_table :event do |e|
  		e.string :description
  		e.date :date
  	end
  end
end
