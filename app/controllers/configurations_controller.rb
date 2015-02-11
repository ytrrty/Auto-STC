class ConfigurationsController < ApplicationController

  before_action :set_configuration, only: [:load]

  def load
    respond_to do |format|
      if @configuration.nil?
        format.json { render json: { status: :false, message: 'Не вдалось завантажити дані' } }
      else
        format.json { render json:
          {
            status: :true,
            configuration: @configuration,
            colors: (render_to_string partial: @configuration.colors),
            #dealers: (render_to_string '/dealers/dealers_configuraiton', dealers: @configuration.dealers),
            dealers: (render_to_string :partial => "dealers/dealers_configuraiton", :locals => { :dealers => @configuration.dealers})
            #features_s: (render_to_string partial: @configuration.features.where(typec: 0)),
            #features_t: (render_to_string partial: @configuration.features.where(typec: 1)),
          }
        }
      end
    end
  end

  private
    def set_configuration
      @configuration = ::Configuration.find(params[:id])
    end
end
