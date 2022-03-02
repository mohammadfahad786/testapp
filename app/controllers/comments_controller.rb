class CommentsController < ApplicationController
  http_basic_authenticate_with name: "fahad", password: "12345",only: :destroy
    def create
        @student = Student.find(params[:student_id])
        @comment = @student.comments.create(params.require(:comment).permit(:teacher, :comment))
        redirect_to student_path(@student)
    end
    def destroy
        byebug
        @student = Student.find(params[:student_id])
        @comment = @student.comments.find(params[:id])
        @comment.destroy
        redirect_to student_path(@student)
    end
end