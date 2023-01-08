class CheesesController < ApplicationController
    # READ
    # GET /cheeses
    # Default looks for index.html.erb file in app/views/constroller_name.
    def index
        # byebug
        render json: { name: "Limburger" }
    end

end
