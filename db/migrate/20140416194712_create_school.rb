class CreateSchool < ActiveRecord::Migration
  def change
  	create_table :school do |s|
  		s.string :description
  	end
  end
end
