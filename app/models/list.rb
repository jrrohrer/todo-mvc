class List < ApplicationRecord
    has_many :items
    # adds methods to my List model: https://guides.rubyonrails.org/association_basics.html#has-many-association-reference
    validates :name, presence: true # a list name must be present for a list to be valid
end
