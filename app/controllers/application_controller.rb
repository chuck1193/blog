class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session

  http_basic_authenticate_with name: 'vicmoneylemonpi', password: 'secret', except: [:index, :show]

  def index
    @articles = Articles.all
  end
end
