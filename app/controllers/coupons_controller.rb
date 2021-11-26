class CouponsController < ActionController::Base

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to "/coupons/#{@coupon.id}"
    end 

    def show
        @coupon = Coupon.find(params[:id])
        puts @coupon.coupon_code
        render "/coupons"
    end 

    def index
        @coupons = Coupon.all
        render "/index"
    end

    def new
        render "/form"
    end 
end