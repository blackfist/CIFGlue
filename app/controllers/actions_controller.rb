class ActionsController < ApplicationController
  def new
      @action = Action.new
  end

  def create
      @action = Action.new(params[:action])
  end

  def index
      @actions = Action.all
  end
end
