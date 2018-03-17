class ActivaateStudentController < ApplicationController
  # before_action :set_student, only: :show
  #
  def activate
    @student = Student.find(params[:id])
  end
  #
  # def index
  #   @students = Student.all
  # end
  #
  #
  # def show
  # end
  #
  #
  #
  # private
  #
  #   def set_student
  #     @student = Student.find(params[:id])
  #   end
end
