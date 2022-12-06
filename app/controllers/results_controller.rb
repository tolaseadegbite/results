class ResultsController < ApplicationController
    
    def index
        @results = @results = Result.search(params[:search])
        # @courses = Course.find(@results.collect &:id).group_by &:result_id
    end
end