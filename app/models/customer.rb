class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

        #returns the full name of the customer, 
        #with the first name and the last name concatenated, Western style.
        #TRYING SECOND WITH TURNING THE WHOLE RETURN INTO A STRING
    def full_name 
        return "#{self.first_name}"" "+"#{self.last_name}"
    end

        #returns the restaurant instance that has the 
        #highest star rating from this customer
        #THIS IS LOOKING AT THE REST. INST W THE HIGHTS (MAX_BY) RATING
        #at first, used singular Review
    def favorite_restaurant
        customer_review = Review.all.max_by{ |r| r.star_rating}
        p customer_review.restaurant_id.name #not sure what the syntax is here to get the name instead of just the restaurant id
    end
    
        #takes a restaurant (an instance of the Restaurant class) and a rating
        #creates a new review for the restaurant with the given restaurant_id
        #IT OG JUST SAID RATING, NOT STAR_RATING, I CHANGED THIS, maybe why it doesn't seem to work?
    def add_review(restaurant, star_rating)
        new_review = Review.create(star_rating: star_rating , customer_id: self.id, restaurant_id: restaurant.id)
    end

        #takes a restaurant (an instance of the Restaurant class) and
        #removes all their reviews for this restaurant
        #you will have to delete rows from the reviews table to get this to work!
        #not sure about this delete_if method, just wanted to try it 
    def delete_reviews(restaurant)
        Review.delete_if { |restaurant| resaurant.id == restaurant_id }
    end


end