class StudentsController < ApplicationController

  def index
    if params[:name]
      input = params[:name].capitalize()
      students = Student.all.filter{ |student| student.first_name == input || student.last_name == input }
      render json: students
    elsif !params[:name]
      render json: Student.all
    end
  end

  def show
    render json: Student.find(params[:id])
  end

end
