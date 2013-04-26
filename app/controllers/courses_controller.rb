class CoursesController < ApplicationController
    def create
        @group = Group.find(params[:group_id])
        @course = @group.course.create(params[:course])
        redirect_to groups_path(@group)
    end
end