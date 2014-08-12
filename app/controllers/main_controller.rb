# encoding: UTF-8
class MainController < ApplicationController
  before_action :authenticate_user!
	def index
	end
	
	def forma
		@autos = Auto.all
		@sities = Sities.all
		render :layout => 'input'
	end

	def input
	
		@transport = params.require(:transport) 
		@start = params.require(:start)
		@finish = params.require(:finish)

		@auto = Auto.find_by_name(@transport)
		@speed = @auto.speed if @auto

		@sity1 = Sity.find_by_name(@start)
		@sity2 = Sity.find_by_name(@finish)
		@s = (Math.sqrt(((@sity2.x - @sity1.x)**2) + ((@sity2.y - @sity1.y)**2)))
		@cost = (@s * @auto.speed).to_i.to_s + " $"
		render :layout => 'input'
	end
end

