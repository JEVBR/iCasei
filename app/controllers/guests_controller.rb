class GuestsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[create]

  def index
    @guests = Guest.last(50).reverse
  end

  def show; end

  def new
    @guest = Guest.new
  end

  def edit; end

  def create
    # Here from Rails.AJAX post
    @guest = Guest.new(guest_params)
    respond_to do |format|
      if @guest.save
        format.html { redirect_to guests_url, notice: 'New guest OK.' }
        format.json { render :show, status: :created, location: @guest }
      else
        format.json { render :show }
      end
    end
  end

  def update
    if @guest.update(guest_params)
      redirect_to @guest
    else
      render :edit
    end
  end

  private

  def guest_params
    params.permit(:GUID, :URL, :timestamp)
  end
end
