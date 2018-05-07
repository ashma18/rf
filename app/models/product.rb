class Product < ApplicationRecord
    has_many :line_items
    belongs_to :user
    validates_presence_of :title
    mount_uploader :image, ImageUploader
    before_destroy :ensure_not_referenced_by_any_line_item


    private

    def ensure_not_referenced_by_any_line_item 
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort
        end
    end
end
