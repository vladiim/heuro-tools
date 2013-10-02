class ServiceCreatorsController < ApplicationController
  def create
    @service = ServiceCreator.new(params['service_creator'])
    @service.save ? redirect_to_show : render_new
  end

  private

  def redirect_to_show
    redirect_to service_url(@service.id), alert: "New service created!"
  end

  def render_new
    
  end
end