class Review < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :customer

    #should return a string of the review 
    def full_review
        return "Review for #{restaurant.name} by #{customer.first_name} #{customer.last_name}: #{self.star_rating} stars."
    end


end