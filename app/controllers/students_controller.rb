class StudentsController < ApplicationController

    before_action :findStudent, only: [:show, :edit, :update]
   
    def new
        @student = Student.new
        render :new
    end

    def create 
        # byebug
        @student = Student.new(student_params)
        if @student.save
            redirect_to @student
        else
            redirect_to students_path 
        end

    end

    def index 
    
        @students = Student.all
    end


    def show 

    end

    def edit
        
    end

    def update 
        if @student.update(student_params)
            redirect_to @student
        else
            redirect_to students_path
        end

    end

    def findStudent
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end


end