class HeadsetsController < ApplicationController

  # before_action :find_headset, only: [:show, :edit]

  def index
    @headsets = Headset.all
  end

  def new
    @headset = Headset.new
  end

  def create
    
    @headset = Headset.create
  end

  def show
    @headset = find_headset()
  end

  def edit
    @headset = find_headset()
  end

  def update
    headset = find_headset()
    headset.update(name: params[:headset][:name],
                    brand: params[:headset][:brand],
                    color: params[:headset][:color],
                    price: params[:headset][:price]
    )
    redirect_to headset_path(headset)
  end

  private

  def find_headset
    Headset.find(params["id"])
  end

end