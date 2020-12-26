class PokemonsController < ApplicationController
   def index
    @pokemons = HTTParty.get('https://pokeapi.co/api/v2/pokemon?&limit=1118')
    @pokemon = Pokemon.new
  end

  def show
      @pokemon = Pokemon.find(params[:id])
  end

  def new
     @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.save

        if @pokemon.save
              redirect_to pokemon_path(@pokemon)
            else
              render :new
            end
    end

  private

  def pokemon_params
      params.require(:pokemon).permit(:name, :char1)
    end

end
