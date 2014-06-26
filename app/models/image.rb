class Image < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  validates_presence_of :url, :tag
  accepts_nested_attributes_for :tags
end
