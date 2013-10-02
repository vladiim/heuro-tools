class ServicesController < ApplicationController

  def new
    @service = ServiceCreator.new
  end

  def show
    @flash   = flash.alert
    @service = ServiceFinder.get_record(params['id'])
  end
end