class Image < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :url
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags

  scope :by_tag, ->(field="") do
    joins(:tags).where('tags.name = ?', field)
  end

  scope :by_category, ->(field="") do
    where(category_name: field)
  end

end
