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
    store_attributes = params[:coupon].require
    coupon = Coupon.create(store_attributes)
    redirect_to coupon_path(coupon)
  end
  
  

end
