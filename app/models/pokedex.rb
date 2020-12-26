class Pokedex < ApplicationRecord

    include HTTParty
    base_uri 'https://pokeapi.co/api/v2/pokemon'

    def initialize(pokemon)
      @options = { query: { pokemon: name } }
    end

    # def questions
    #   self.class.get("/2.2/questions", @options)
    # end

    # def users
    #   self.class.get("/2.2/users", @options)
    # end

end
