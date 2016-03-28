class Flat < ActiveRecord::Base
  has_attachments :photos, maximum: 3

  geocoded_by :full_street_address
  after_validation :geocode, if: :address_changed?

  def full_street_address
    [address, city].compact.join(', ')
  end

end
