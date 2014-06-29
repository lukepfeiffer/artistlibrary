class Tag < ActiveRecord::Base
  has_and_belongs_to_many :images
  before_save { |tag| tag.name = tag.name.downcase }
end
