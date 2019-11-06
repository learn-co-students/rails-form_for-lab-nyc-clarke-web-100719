class SchoolClassesController < ApplicationController
    before_action :findSchoolClass, only: [:show, :edit, :update]
    def new
        @sc = SchoolClass.new
    end

    def create 
        # byebug
        @sc = SchoolClass.new(sc_params)
        if @sc.save
            redirect_to @sc
        else
            redirect_to schools_path 
        end

    end

    def index 
    
        @scs = SchoolClass.all
    end


    def show 

    end

    def edit
        
    end

    def update 
        if @sc.update(sc_params)
            redirect_to @sc
        else
            redirect_to schools_path
        end

    end

    def findSchoolClass
        @sc = SchoolClass.find(params[:id])
    end

    def sc_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
