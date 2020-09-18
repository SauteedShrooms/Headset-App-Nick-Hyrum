class HeadsetsController < ApplicationController

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
    @headset = Headset.find(params["id"])
  end

  def edit
    @headset = Headset.find(params["id"])
  end

  def update
    @headset = Headset.find(params["id"])
    @headset.update(name: , brand: , color: , price: )
  end

end