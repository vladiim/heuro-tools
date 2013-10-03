class ServicesController < ApplicationController

  skip_filter :authenticate_user!, except: :new

  def index
    @services = ServiceFinder.all
  end

  def new
    @service = ServiceCreator.new
  end

  def show
    @flash   = flash.alert
    @service = ServiceFinder.get_record(params['id'])
  end
end