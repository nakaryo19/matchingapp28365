class RelationshipsController < ApplicationController
  def create
    #current_user.active_relationships.create(create_params)
    @relationship = current_user.active_relationships.new(create_params)
    if @relationship.save
      @follower_user = current_user
      @following_user = User.find(params["following_id"])
      @matching = @following_user.following?(current_user)

      # respond_to do |format|
      #   format.json
      # end
      # render :template => "relationships/create"
    else
      render :template => "users/show"
    end
  end

  def destroy
    relationship =  Relationship.find(params[:id])
    relationship.destroy
    redirect_to controller: 'users', action: 'index'
  end

  private

  def create_params
    params.permit(:following_id)
  end
end
