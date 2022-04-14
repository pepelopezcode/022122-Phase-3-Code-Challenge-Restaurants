class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def self.fanciest
        Restaurant.order(:price).last
    end

    def all_reviews
        array_of_reviews =[]
        self.reviews.each {|review| array_of_reviews<<review.full_review}
        array_of_reviews
    end
end