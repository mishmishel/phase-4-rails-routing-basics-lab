class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        # Assuming you have a Student model with a 'grade' attribute
        students = Student.order(grade: :desc)
        render json: students
      end
end
