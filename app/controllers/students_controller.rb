class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
    @message = @student.active ? "This student is currently active." : "This student is currently inactive."
  end

  def activate
    @student = Student.find(params[:id])
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
