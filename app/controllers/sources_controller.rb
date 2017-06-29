class SourcesController < ApplicationController
  def index
		@sources = Source.all
  end

  def import
		Source.import(params[:file])
  end
end
