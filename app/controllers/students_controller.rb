class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
    render :index
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to student_path(@student)
    else
      flash[:messages] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def edit
    render :edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      flash[:messages] = @student.errors.full_messages
      redirect_to edit_student_path
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
