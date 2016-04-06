class BalancesController < ApplicationController

  def create
    Balance.new.split_save(params[:attachment], session[:auth][:info][:nickname])
    redirect_to root_path, :notice => "Vendas Cadastrada!"
  end
end
