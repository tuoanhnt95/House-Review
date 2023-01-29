class PrefecturesController < ApplicationController
  before_action :set_prefecture, only: %i[show]

  def index
    @prefectures = Prefecture.all
  end

  private

  def set_prefecture
    @prefecture = Prefecture.find(params[:prefecture_code])
  end
end
