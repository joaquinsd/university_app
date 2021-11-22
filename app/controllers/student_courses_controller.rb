class StudentCoursesController < ApplicationController

  def create
    course_added = Course.find(params[:course_id])
    @student_course = StudentCourse.create(course: course_added, student: current_user)
    flash[:notice] = "You have successfully enrolled in #{course_added.name}"
    redirect_to current_user
  end
end
