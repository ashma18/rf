class ChargesController < ApplicationController
include CurrentCart
before_action :find_cart
    def new
    end

    def create
        Stripe.api_key = ENV['STRIPE_SECRET_KEY']
        
        token = params[:stripeToken]
        @amount= @cart.total_price.to_i*100
        

        charge = Stripe::Charge.create({
            amount: @amount,
            description: 'Rails Stripe customer',
            currency: 'aud',
            source: token,
        })

        redirect_to shop_index_url, notice: "your order"
    end 
        # rescue Stripe::CardError => e
        #     flash[:error] = e.message
        #     redirect_to new_charge_path
        # end


private

    def find_cart
        @cart = Cart.find(session[:cart_id])
    end
end
