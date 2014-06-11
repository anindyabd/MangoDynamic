class PurchasesController < ApplicationController
	def purchase
		@products = Product.order(:title)
	end
end
