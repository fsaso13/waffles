class WelcomeController < ApplicationController
  def index

  	@reports = Repport.all
  	logger.info @reports
  end
  def contacto
  	render 'welcome/contacto'
  end
  def search

  end
  def foro
  	render 'welcome/foro'
  end
end
