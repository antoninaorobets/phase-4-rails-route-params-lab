class StudentsController < ApplicationController

  def index
      #  byebug
    students = Student.all
    if params[:name]
      name = params[:name].capitalize()
      students = students.where(['first_name = ? or last_name = ?', name, name])
    end
      render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  # def name
  #   student = Student.find_by(last_name: params[:name])
  #   render json: student
  # end

end
