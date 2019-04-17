class Restaurant < ApplicationRecord
    validates :title, presence: true
    validates :address, presence: true
    validates :description, presence: true
    validates :food_type, presence: true

    has_many :reviews, dependent: :destroy

    def average_rating
        unless self.reviews.empty?
            sum = 0
            self.reviews.each do |review|
                sum += review.rating
            end
            sum / self.reviews.count
        end
    end
end
