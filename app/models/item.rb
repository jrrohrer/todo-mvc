class Item < ApplicationRecord
    belongs_to :list
    # adds methods to my Item model: https://guides.rubyonrails.org/association_basics.html#belongs-to-association-reference
    validates :description, presence: true
end
