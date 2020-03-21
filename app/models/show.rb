class Show < ActiveRecord::Base

    def self.highest_rating
        show = Show.order(rating: :desc)
        show[0][:rating]
    end

    def self.lowest_rating
        show = Show.order(rating: :desc)
        show[-1][:rating]
    end

    def self.most_popular_show
        show = Show.order(rating: :desc)
        show[0]
    end

    def self.least_popular_show
        show = Show.order(rating: :asc)
        show[0]
    end

    def self.ratings_sum
        sum = Show.sum(:rating)
    end

    def self.popular_shows
        shows = Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        shows = Show.order(name: :asc)
    end


end