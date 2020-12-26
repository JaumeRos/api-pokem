class PokemonsController < ApplicationController
   def index
    @pokemons = Pokemon.paginate(:page => params[:page], :per_page => 12)
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
