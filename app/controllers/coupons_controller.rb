class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end 
  
  def show
    @coupon = Coupon.find(params[:id])
  end
  
  def new
  end
  
  def create
    store_attributes = params.dig(:coupon)
    # store_attributes = params[:coupon].map{|k,v| [k,v]}.to_h
    coupon = Coupon.create(store_attributes)
    redirect_to coupon_path(coupon)
  end
  
  

end
