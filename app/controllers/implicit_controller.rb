class ImplicitController < ApplicationController
  def index
      if params[:type] == "details"
          "bla"
      elsif params[:type] == "token"
          @url = StalkyRails::Application::API_ACCESSTOKEN_ENDPOINT
          @fields = {
              'grant_type' => 'authorization_code',
              'code' => URI::escape(params[:code]),
              'redirect_uri' => StalkyRails::Application::REDIRECT_URI,
              'client_id' => URI::escape(StalkyRails::Application::CLIENT_ID),
              'client_secret' => URI::escape(StalkyRails::Application::CLIENT_SECRET)
          }
      end
  end
end
