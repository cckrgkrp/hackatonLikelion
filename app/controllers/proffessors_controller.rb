class ProffessorsController < ApplicationController

    def new
        @proffessor = Proffessor.new
        @department = Department.find_by_id(params[:departmentId])
    end

    def create
        @proffessor = Proffessor.new(proffessor_params)
        if @proffessor.save
            redirect_to '/department/' + params[:department_id].to_s
        else
            redirect_to '/proffessors/new'
        end
    end

    def edit
        @proffessor = Proffessor.find(params[:id])
    end

    def update
        @proffessor = Proffessor.find(params[:id])
        if @proffessor.update(proffessor_params)
            redirect_to '/departments/'  + params[:department_id].to_s
        else
            redirect_to '/proffessors/edit'
        end
    end 

    private
    def proffessor_params
        params.require(:proffessor).permit(:proffessorName, :proffessorDecs, :department_id)
    end
end
