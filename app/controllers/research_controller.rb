class ResearchController < ApplicationController

def index
end

def new
    @research = Research.new
end

def create
    @research = Research.new(research_params)

    if @research.save
        redirect_to @research
    else
        render 'new'
    end
end

def show
    @research = Research.find(params[:id])
end

def update
    @research = Research.find(params[:id])
    if @research.update(research_params)
        redirect_to @research
    else
        render 'edit'
    end
end

def edit
    @research = research.find(params[:id])
end

private

def research_params
    params.require(:research).permit(:name, :title, :location)
end

layout "application"

end
