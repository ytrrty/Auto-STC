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
            dealers: (render_to_string partial: "dealers/dealers_configuraiton", locals: { dealers: @configuration.dealers }),
            features_s: (render_to_string partial: "features/features_s", locals: { features: @configuration.feature_configurations.includes(:feature).where( features: {typec: 0}).all }),
            features_t: (render_to_string partial: "features/features_s", locals: { features: @configuration.feature_configurations.includes(:feature).where( features: {typec: 1}).all }),
            engine: (render_to_string partial: "features/engine", locals: { configuration: @configuration }),
            dynamic: (render_to_string partial: "features/dynamic", locals: { configuration: @configuration }),
            view: (render_to_string partial: "features/view", locals: { colors: @configuration.colors, features: @configuration.feature_configurations.includes(:feature).where( features: {typec: 2}).all }),
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
