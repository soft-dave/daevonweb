class ProjectsController < ApplicationController
	def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
    @previous = Portfolio.where("id < ?", params[:id]).order(:id).last   
    @next = Portfolio.where("id > ?", params[:id]).order(:id).first
  end
end
