class DepartmentsController < ApplicationController
    
    def index
        @department = Department.all
    end
    def show
        @department = Department.find(params[:id])
        @proffessors = @department.proffessors
    end
end
