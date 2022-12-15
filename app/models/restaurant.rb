class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    #This returns one restaurant instance for the restaurant 
    #that has the highest price
    def Restaurant.fanciest
        return Restaurant.all.max_by { |r| r.price}
    end

    #This should return an Array of strings 
    #with all the reviews for this restaurant
    def all_reviews
         self.reviews
         #ran out of time
         #p "Review for #{self.name} by #{customer.first_name} #{customer.last_name}: #{review.star_rating} stars."
    end
end