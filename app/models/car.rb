class Car < ActiveRecord::Base
  has_many :configurations, dependent: :delete_all
  has_many :photos, dependent: :delete_all

  has_attached_file :prev_image, default_url: "/assets/prev_image_car.png"

  validates_attachment_content_type :prev_image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :name, :description, :year

  def slug
    self.name.gsub( ' ', '_' )
  end
end
