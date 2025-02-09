class Product < ApplicationRecord
 
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true

  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line

  validates :title, :brand, :price, :model, presence: true
  # Set max lenght to the description, price and title 
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, length: { maximum: 10 }

  # You can input more brands finish and condition here
  BRAND = %w{ Ferrari Opel Lenovo Fossil}
  FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
  CONDITION = %w{ New Excellent Mint Used Fair Poor }

end
