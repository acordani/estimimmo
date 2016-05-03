class Land < ActiveRecord::Base

	extend FriendlyId
	friendly_id :address, use: :slugged

	def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
      		Land.create! row.to_hash
     	end
  	end
end
