class ProflecturesController < ApplicationController
    before_action :require_user, only: [ :new, :create]
    def show
        @department = Department.find_by_id(params[:departmentId])
        @proffessor = Proffessor.find_by_id(params[:proffessorId])
        @lecture = Lecture.find_by_id(params[:lectureId])
        @proflecture = Proflecture.where(department_id: @proffessor.department_id).where(proffessor_id: params[:proffessorId]).where(lecture_id: params[:lectureId])
        @posts = Post.where(proflecture_id: @proflecture.ids).
            order('created_at DESC')
    end
    def new
        @proflecture = Proflecture.find_by_id((params[:proflectureId]).to_i)
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        
        if @post.save
            redirect_to '/posts/show?post=' + @post.id.to_s
        else
            redirect_to '/}'
        end
    end

    private 
    def post_params
        params.require(:post).permit(:title, :body, :proflecture_id, :user_id)
    end


end
