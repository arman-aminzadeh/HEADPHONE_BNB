class ReviewsController < ApplicationController
    def new
        @product = Product.find(params[:product_id])
        @review = Review.new
        authorize @review
    end
    def create
        @product = Product.find(params[:product_id])
        @review = Review.new(review_params)
        @review.product = @product
        @review.user= current_user
        authorize @review
        respond_to do |format|
            if @review.save
              format.html { redirect_to product_path(@product, anchor: "#review-#{@review.id}") }
              format.json
            else 
                format.html { render 'product/show'}
                format.json
            end        
        end
    end

    private

    def review_params
    params.require(:review).permit(:content)
    end
end
