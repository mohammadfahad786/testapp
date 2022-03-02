class StudentsController < ApplicationController
  # before_action :authenticate_customer!, :except=>[:index,:show]
  def index
    @students = Student.all
    flash.keep
  end

  def show
    @student = Student.find(params[:id])
    flash.keep
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    
    @student = Student.new(params.require(:student).permit(:name, :roll_no, :semster))
    if @student.valid? && @student.save
      # UserMailer.with(user: @student).welcome_email.deliver_later
      redirect_to students_path, flash: { referral_code: 1234 }

    else
      render :new
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(params.require(:student).permit(:name, :roll_no, :semster))
      redirect_to students_path
    else
      render :edit
    end
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def authentication_check
   authenticate_or_request_with_http_basic do |user, password|
    user == 'USER' && password == 'PASSWORD'
   end
  end
end
