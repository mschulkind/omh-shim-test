class SessionController < ApplicationController
  def create
    ap request.env['omniauth.auth']
    
    render text: 'success'
  end
end
