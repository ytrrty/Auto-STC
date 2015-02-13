class Photo < ActiveRecord::Base
  belongs_to :car

  has_attached_file :file, default_url: "/images/no_car_img.jpg"

  validates_presence_of :name, :car_id
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
end
