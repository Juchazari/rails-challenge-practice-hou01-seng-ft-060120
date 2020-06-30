class CompaniesController < ApplicationController
    before_action :find_company, only: [:show, :edit]

    def index
        @companies = Company.all
    end

    def show
    end

    def new
        @company = Company.new
    end

    def create
    end

    def edit
    end

    def update
    end

    private

        def company_params
            params.require(:company).permit(:name, :offices)
        end

        def find_company
            @company = Company.find(params[:id])
        end
end