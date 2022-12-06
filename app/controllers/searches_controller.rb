class SearchesController < ApplicationController

    def new
        @search = Search.new
        @sessions = Result.distinct.pluck(:session)
        @levels = Result.distinct.pluck(:level)
        @semesters = Result.distinct.pluck(:semester)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end

    private

    def search_params
        params.require(:search).permit(:keywords, :session, :level, :semester)
    end
end
