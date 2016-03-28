class Flat < ActiveRecord::Base
  has_attachments :photos, maximum: 3
end
