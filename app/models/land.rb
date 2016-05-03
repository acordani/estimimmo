class Land < ActiveRecord::Base

	def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
      		Land.create! row.to_hash
     	end
  	end
end
