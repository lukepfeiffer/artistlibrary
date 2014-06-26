class Image < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :url
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
end
