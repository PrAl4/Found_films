class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :film

      ## no repeat favorites allowed.
    validates :user_id, uniqueness: { scope: :film_id }

    ## methods to glean info.
    def self.favorite_film

      # movie ids, in "all" and "unique" formats.
      all_favorites = self.all.map{|favorite| favorite.film}
      unique = all_favorites.uniq

      # count for each individual movie.
      counts = unique.map do |id|
        all_favorites.count(id)
      end

      # merge the count and unique arrays in an array of hashes.
      film_with_count = unique.map.with_index{ |id, i| {film: id, count: counts[i]} }

      # sort by highest count
      sorted = film_with_count.sort_by{|film_hash| film_hash[:count]}

      sorted.reverse
    end

    def self.most_favorite_film_title
        Film.find(self.favorite_film.first[:film]).title
    end

    def self.most_favorite_film_count
        self.favorite_film.first[:count]
    end

end
