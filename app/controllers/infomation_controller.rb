class InfomationController < ApplicationController
  def infomation_index
    if @la == "zh"
      render "infomation_index_zh"
    end
  end
end
