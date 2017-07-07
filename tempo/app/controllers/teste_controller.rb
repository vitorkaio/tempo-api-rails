class TesteController < ApplicationController
  def index
    @teste = Teste.all
    t = open("http://api.openweathermap.org/data/2.5/weather?q=barbacena&APPID=8c9ca0dfddb5f4e3074aaee1dc85b045").read
    puts t
    # Renderiza com json
    render json: t
  end

  def tempo
    puts '------------------------------> Entrou'
    if params[:cidade].blank?
      puts 'Em branco'
      redirect_to tempo_path

    else
      cidade = params[:cidade]
      @info = open("http://api.openweathermap.org/data/2.5/weather?q=" + cidade + "
        &APPID=8c9ca0dfddb5f4e3074aaee1dc85b045").read
        render json: @info
    end

  end

  def show

  end

end
