class Article < ApplicationRecord
  include Slugable

  belongs_to :author


  scope :published, -> { where.not(published_at: nil) }
  scope :newest_first, -> { order("published_at DESC") }
  scope :drafts, -> { where(published_at: nil) }

  validates_presence_of :title

  has_rich_text :content


  def published?
    return published_at != nil
  end
end
