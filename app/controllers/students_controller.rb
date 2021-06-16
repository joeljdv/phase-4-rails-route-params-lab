class StudentsController < ApplicationController

  def index
    if params.include?("name")
      student = Student.all.where(first_name: params[:name]).or(Student.all.where(last_name: params[:name])).first
      render json: student
    else
      students = Student.all
      render json: students
    end
  end

  def show 
    student = Student.all.find(params[:id])
    render json: student
  end

end
