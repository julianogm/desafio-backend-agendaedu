class DeputadosController < ApplicationController
  def index
    if params[:sgUF].present?
      @deputados = Deputado.filtrar_estado(params[:sgUF])
    else
      @deputados = Deputado.all
    end
  end

  def show
    deputado(params[:id])
    despesas(params[:id])
    totalgasto
  end

  private
  def totalgasto
    @totalgasto = @deputado.calcular_gasto(@despesas)
  end

  def deputado(id)
    @deputado = Deputado.find(id)
  end

  def despesas(id)
    @despesas = Despesa.where('deputado_id = ?',id)
  end
end