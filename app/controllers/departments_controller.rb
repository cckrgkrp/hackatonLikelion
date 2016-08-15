class DepartmentsController < ApplicationController
    before_action :require_admin, only: [:new, :create, :edit, :update]
    def index
        @department = Department.all
    end
    def show
        @department = Department.find(params[:id])
        @proffessors = @department.proffessors
    end

    def new
        @department = Department.new
    end
    def create
        @department = Department.new(depart_params)
        if @department.save
            redirect_to '/departemnts'
        else
            render action: 'new'
        end
    end

    def edit
        @department = Department.find(params[:id])
    end

    def update
        @department = Department.find(params[:id])
        if @department.update(depart_params)
            redirect_to('/departments', :notice => "성공적으로 저장되었습니다.")
        else
            render :action => "new"
        end
    end

    private 
    def depart_params
        params.require(:department).permit(:departName, :departDesc)
    end
end
