class Photo < ActiveRecord::Base
  belongs_to :car

  validates_presence_of :name, :car_id
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
end
