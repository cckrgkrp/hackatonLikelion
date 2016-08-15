class ProflecturesController < ApplicationController
    before_action :require_admin, only: [:new, :create, :edit, :update]
    def show
        @department = Department.find(params[:departmentId])
        @proffessor = Proffessor.find(params[:proffessorId])
        @lecture = Lecture.find(params[:lectureId])
        @proflecture = Proflecture.where(department_id: params[:departmentId]).where(proffessor_id: params[:proffessorId]).where(lecture_id: params[:lectureId])
        @posts = Post.where(proflecture_id: @proflecture.ids).
            order('created_at DESC')
    end
    def new
        @department = Department.find(params[:departmentId])
        @proffessor = Proffessor.find(params[:proffessorId])
        @proflecture = Proflecture.new
    end
    def create
        @proflecture = Proflecture.new(proflecture_params)

        if @proflecture.save
            redirect_to '/departments/' + params[:department_id].to_s
        else
            render action: 'new'
        end
    end
    
    private
    def proflecture_params
        params.require(:proflecture).permit(:department_id, :proffessor_id, :lecture_id)
    end

   

end
