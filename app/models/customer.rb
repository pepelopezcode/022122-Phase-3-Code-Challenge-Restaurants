class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def favorite_restaurant
        self.reviews.order(:star_rating).last.restaurant
    end

    def add_review(restaurant, rating)
        Review.create(star_rating: rating, customer_id: self.id, restaurant_id: restaurant.id)
    end

    def delete_reviews(restaurant)
        self.reviews.where(restaurant_id: restaurant).destroy_all
    end

end 