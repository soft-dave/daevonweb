class ProjectsController < ApplicationController
	def index
    @portfolios = Portfolio.all
    # @portfolio = Portfolio.find(params[:id])
  end

  def show
    # @portfolios = Portfolio.published.order('created_at')
    @portfolio = Portfolio.find(params[:id])
  end
end
