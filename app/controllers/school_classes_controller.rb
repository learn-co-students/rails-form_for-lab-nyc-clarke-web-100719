class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  def index
    @school_classes = SchoolClass.all
    render :index
  end

  def new
    @school_class = SchoolClass.new
    render :new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)

    if @school_class.valid?
      redirect_to school_class_path(@school_class)
    else
      flash[:messages] = @school_class.errors.full_messages
      redirect_to new_school_class_path
    end
  end

  def edit
    render :edit
  end

  def update
    if @school_class.update(school_class_params)
      redirect_to school_class_path(@school_class)
    else
      flash[:messages] = @school_class.errors.full_messages
      redirect_to edit_school_class_path
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end
