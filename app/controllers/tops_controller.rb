class TopsController < ApplicationController
  def greet
    respond_to do |format|
      format.html
      format.turbo_stream
    end

  end

  def goodnight
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end
