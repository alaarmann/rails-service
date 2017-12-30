class NachrichtenController < ApplicationController

  http_basic_authenticate_with name: "ala", password: "secret", only: :destroy
  
  def create
    @vorgang = Vorgang.find(params[:vorgang_id])
    @nachricht = @vorgang.nachrichten.create(nachricht_params)
    redirect_to vorgang_path(@vorgang)
  end

  def destroy
    @vorgang = Vorgang.find(params[:vorgang_id])
    @nachricht = @vorgang.nachrichten.find(params[:id])
    @nachricht.destroy
    redirect_to vorgang_path(@vorgang)
  end

  private
    def nachricht_params
      params.require(:nachricht).permit(:sender, :inhalt)
    end
end
