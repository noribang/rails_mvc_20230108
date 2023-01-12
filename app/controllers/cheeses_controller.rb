class CheesesController < ApplicationController
    # READ
    # GET /cheeses
    # Default looks for index.html.erb file in app/views/constroller_name.
    def index
        # byebug
        # render json: { name: "Limburger" }
        
        # cheeses = Cheese.all
        # render json: cheeses
        
        cheeses = Cheese.all
        # render json: cheeses, only: [:id, :name, :price, :is_best_seller]
        render json: cheeses, except: [:created_at, :updated_at]
    end
    # READ
    # GET /cheeses/:id
    # def show
    #     # byebug
    #     # cheese = Cheese.find(params[:id])
    #     # render json: cheese

    #     # Returns hash with all keys.
    #     # cheese = Cheese.find_by(id: params[:id])
    #     # render json: cheese
    #     # render json: {
    #     #                 id: cheese.id,
    #     #                 name: cheese.name,
    #     #                 price: cheese.price,
    #     #                 is_best_seller: cheese.is_best_seller,
    #     #                 created_at: cheese.created_at, 
    #     #                 updated_at: cheese.updated_at
    #     #             }

    #     # Serialization
    #     cheese = Cheese.find_by(id: params[:id])
    #     render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
    # end

    def show
        # Find cheese instance by id and return hash.
        cheese = Cheese.find_by(id: params[:id])
        if cheese
            render json: cheese, except: [:created_at, :updated_at]
        end
        # byebug
    end

end
