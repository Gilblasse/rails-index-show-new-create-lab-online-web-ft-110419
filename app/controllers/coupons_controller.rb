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
    byebug
    store_attributes = params[:store].map{|k,v| [k,v]}.to_h
    coupon = Coupon.create(store_attributes)
    redirect_to coupon_path(coupon)
  end
  
  

end
