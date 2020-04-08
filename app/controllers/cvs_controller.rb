class CvsController < ApplicationController

def index
end

def new
    @cv = Cv.new
end

def create
    @cv = Cv.new(cv_params)

    if @cv.save
        redirect_to @cv
    else
        render 'new'
    end
end

def show
    @cv = Cv.find(params[:id])
end

def update
    @cv = Cv.find(params[:id])
    if @cv.update(cv_params)
        redirect_to @cv
    else
        render 'edit'
    end
end

def edit
    @cv = Cv.find(params[:id])
end

private

def cv_params
    params.require(:cv).permit(:name, :title, :location)
end

layout "application"

end
