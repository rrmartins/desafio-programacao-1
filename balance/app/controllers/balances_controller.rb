class BalancesController < ApplicationController
  def new
  end

  def create
    Balance.new.split_save(params[:attachment], session["auth"]["info"]["name"])
    redirect_to root_path, :notice => "Vendas Cadastrada!"
  end
end
