class BoomController < ApplicationController
  def boom
     raise "Boom!" unless params[ :disable_boom ].present?
  end
end
