class RisksController < ApplicationController
  def index
  end

  def new
    @risk = Risk.new
  end

  def create
    @risk = Risk.new(risk_params)

    if @risk.save
      redirect_to risks_path, :notice => "Your Risk was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def risk_params
      params.require(:risk).permit(:title, :description, :impact, :likeliness)
    end
end
