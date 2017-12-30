class NachrichtenController < ApplicationController

  def create
    @vorgang = Vorgang.find(params[:vorgang_id])
    @nachricht = @vorgang.nachrichten.create(nachricht_params)
    redirect_to vorgang_path(@vorgang)
  end

  private
    def nachricht_params
      params.require(:nachricht).permit(:sender, :inhalt)
    end
end
