class PersonalController < ApplicationController

def index
end

def new
    @personal = Personal.new
end

def create
    @personal = Personal.new(personal_params)

    if @personal.save
        redirect_to @personal
    else
        render 'new'
    end
end

def show
    @personal = Personal.find(params[:id])
end

def update
    @personal = Personal.find(params[:id])
    if @personal.update(personal_params)
        redirect_to @personal
    else
        render 'edit'
    end
end

def edit
    @personal = personal.find(params[:id])
end

private

def personal_params
    params.require(:personal).permit(:name, :title, :location)
end

layout "application"

end
