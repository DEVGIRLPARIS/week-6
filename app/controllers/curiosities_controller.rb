class CuriositiesController < ApplicationController
  def index
    @curiosities = Curiosity.all
  end

def destroy
  @curiosity = Curiosity.find(params[:id]) # Récupère l'id de la curiosité à supprimer
  @curiosity.delete                        # Supprime la curiosité dans la base de données

  redirect_to curiosities_path               # Redirige l'utilisateur vers la vue Index
end


def show
  @curiosity = Curiosity.find(params[:id]) # Récupère l'id de la curiosité à afficher
end

end
