class ArquivosController < ApplicationController
  def index
  end

  def import
    begin
      Arquivo.loadfile(params[:import_file])
      flash.notice = "Arquivo CSV carregado."
      redirect_to root_path
  
    rescue => exception
      flash.notice = "Erro ao carregar arquivo: #{exception}."
      redirect_to carregar_path
    end
  end
end