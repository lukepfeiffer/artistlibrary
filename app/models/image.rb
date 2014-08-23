class Image < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :url
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags

  scope :by_tag, ->(field="") do
    if field.present?
      joins(:tags).where('tags.name = ?', field)
    end
  end

  scope :by_category, ->(field="") do
    if field.present?
      where(category_name: field)
    end
  end

end
