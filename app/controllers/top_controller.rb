class TopController < ApplicationController
  def index
    if @la == "zh"
      render "index_zh"
    end
  end
end
