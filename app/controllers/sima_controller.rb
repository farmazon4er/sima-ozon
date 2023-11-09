# frozen_string_literal: true

class SimaController < ApplicationController
  def new
  end

  def create
    sima = SimaApi.new(ENV['API_KEY'])
    resp = sima.get_item(params[:p])

    if resp[:message] != 'not found'
      ItemFromSima.create_item(resp)
    else
      render :new, flash: { alert: "Товар не найден" }
    end
  end
end
