class ServiceCreatorsController < ApplicationController
  def create
    @service = ServiceCreator.new(params['service_creator'])
    @service.save ? redirect_to_show : render_new
  end

  private

  def redirect_to_show
    redirect_to service_url(@service.id), flash: { success: "New service created!" }
  end

  def render_new
    render new_service_url, flash: { error: "There was a problem creating your service, please try again." }
  end
end