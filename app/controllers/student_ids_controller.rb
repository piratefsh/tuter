class StudentIdsController < ApplicationController

    def index
        respond_to do |format|
            format.html {redirect_to @sid}
        end
    end

    def new
        @sid = StudentId.new
        @group = Group.find(params[:group_id])
        respond_to do |format|
            format.html {redirect_to @group}
        end
    end

    def create
        @sid = StudentId.new(params[:student_id])
        @group = Group.find(params[:group_id])
        @group.student_ids << @sid

        respond_to do |format|
            if @sid.save and @group.save
                format.html {redirect_to @group}
            end
        end
    end

end
