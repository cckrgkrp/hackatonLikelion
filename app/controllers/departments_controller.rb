class DepartmentsController < ApplicationController
    before_action :require_user, only: [:index, :show]
    def index
        @department = Department.all
    end
    def show
        @department = Department.find(params[:id])
        @proffessors = @department.proffessors
    end
end
