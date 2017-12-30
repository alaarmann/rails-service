class VorgaengeController < ApplicationController

  http_basic_authenticate_with name: "ala", password: "secret", except: [:index, :show]
 
  def index
    @vorgaenge = Vorgang.all
  end

  def show
      @vorgang = Vorgang.find(params[:id])
    end

  def new
    @vorgang = Vorgang.new
  end

  def edit
    @vorgang = Vorgang.find(params[:id])
  end

  def update
    @vorgang = Vorgang.find(params[:id])

    if @vorgang.update(vorgang_params)
      redirect_to action: "show", id: @vorgang.id
    else
      render 'edit'
    end
  end

  def create
    @vorgang = Vorgang.new(vorgang_params)

      if @vorgang.save
        redirect_to @vorgang
      else
        render 'new'
      end
    end

    def destroy
      @vorgang = Vorgang.find(params[:id])
      @vorgang.destroy

      redirect_to vorgaenge_path
    end
    private
  def vorgang_params
    params.require(:vorgang).permit(:referenz, :angaben)
  end
end
