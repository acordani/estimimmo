class Land < ActiveRecord::Base

	extend FriendlyId
	friendly_id :address_complete, use: :slugged

	def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
      		Land.create! row.to_hash
     	end
  	end

  	def address_complete
  		[:address, :city]
  	end

end
