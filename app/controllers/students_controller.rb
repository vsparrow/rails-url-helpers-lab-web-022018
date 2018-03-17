class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def activate
    @student = Student.find(params[:id])
    student_activate= nil
    student_activate =true if @student.active==false
    student_activate =false if @student.active==true
    @student.update(active: student_activate)
    # redirect_to 'student_path(@student.id)' #     URI::InvalidURIError:
    redirect_to student_path(@student.id)

  end

  def index
    @students = Student.all
  end


  def show
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end
