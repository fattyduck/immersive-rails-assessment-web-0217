class AppearancesController < ApplicationController
  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_info)
    if @appearance.save
      redirect_to @appearance
    else
      render 'new'
    end
  end

  def index

  end

  def show
  end

  def edit
  end

  def appearance_info
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
