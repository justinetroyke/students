class StudentsController < ApplicationController
  def show
    student = Student.find(params[:id])

    redirect_to student_path(student)
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end
end
