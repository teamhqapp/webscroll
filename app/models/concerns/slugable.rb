module Slugable
  extend ActiveSupport::Concern

    included do
      after_create :generate_slug
    end


    private
    def generate_slug
      if has_attribute?(:slug) && has_attribute?(:title)
        s = "#{id}-#{title.parameterize}"
        update_attribute(:slug, s)
      end
    end
end
