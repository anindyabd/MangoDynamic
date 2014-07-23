class InvoicePdf < Prawn::Document

	def initialize(order, view)
		super()
		@order = order
		@view = view
		header
		bill_to
		move_down 20
		text_content
		pricing
		footer
	end
	private
		def header
			y_position = cursor
			bounding_box([0, y_position], :width => 270, :height => 100) do
				logopath = 'app/assets/images/orangeLogo.png'
				image logopath, :width => 160, :height => 30, :position => :left
				pad_bottom(10) { text "Advertise to the world", size: 9, style: :italic }
				text "1621 Euclid Avenue, suite-2150", size: 7
				text "Cleveland, OH 44115", size: 7
				text "www.consultmango.com", size: 7
			end

		 	bounding_box([400, y_position], :width => 270, :height => 100) do
	      		pad_bottom(20) { text "INVOICE", size: 15, style: :bold, :position => :right, :spacing => 16 }
	      		text "Date: #{@order.created_at.strftime("%m/%d/%Y")}"
	      		text "Invoice # inv#{ @order.id }"
	    	end
		end

		def bill_to
			highlight = HighlightCallback.new(:color => '00648b', :document => self)
			formatted_text [ { :text => 'BILL TO', :callback => highlight }], :size => 13, :color => 'FFFFFF'
			text "#{@order.name}"
			text "#{@order.college_name}"
			text "#{@order.address}"
			text "#{@order.city} #{@order.state}, #{@order.zip_code}"
			phone = phone_number_format(@order.phone_number)
			text "#{phone}"
		end

		def text_content
	    	table line_items do
	    		row(0).font_style = :bold
	    		row(0).background_color = '00648b'
	    		row(0).text_color = 'FFFFFF'
	    		row(0).align = :center
	    		column(1).align = :right
	      		self.header = true
	      		self.row_colors = ['DDDDDD', 'FFFFFF']
	      		self.column_widths = [300, 200]
	    	end
	 	end

	 	def pricing
	 		y_position = cursor
	 		sidebox(cursor)
	 		bounding_box([280, y_position-20], :width => 150, :height => 200, :align => :right) do
	 			pad_top(0) { text "Subtotal: ", :align => :right }
	 			pad_top(5) { text "Campaign Discount: ", :align => :right }
	 			pad_top(5) { text "Tax: ", :align => :right }
	 			pad_top(5) { text "Total: ", :align => :right, :style => :bold }
	 			line [40, y_position-320], [250, y_position-320]
	 			stroke
	 		end
	 		bounding_box([455, y_position-20], :width =>200, :height => 100, :align => :right) do
	 			text "$#{@order.total_price}"
	 			if @order.plan_type == "Three Months"
	 				pad_top(5){ text "0%", :align => :left }
	 			elsif @order.plan_type == "Six Months"
	 				text "1.95%"
	 			else
	 				text "2.97%"
	 			end
	 			pad_top(5){ text "0%" }
	 			pad_top(5){ text"$#{@order.total_price}", :style => :bold }
	 		end
	 	end

	 	def sidebox(y_position)
	 		move_down(20)
	 		bounding_box([0, y_position-20], :width =>300, :height => 100, :align => :right) do
		 		highlight = HighlightCallback.new(:color => '00648b', :document => self)
				formatted_text [ { :text => 'OTHER COMMENTS', :callback => highlight }], :size => 13, :color => 'FFFFFF'
				pad_top(2) { text "1. Total Payment is due in 30 days", size: 10 }
				pad_top(2) { text "2. Please send invoice to the company address in the header", size: 10 }
				pad_top(2) { text "3. Please include the invoice number on check", size: 10 }
				#transparent(0.5) { stroke_bounds }
			end
	 	end

	 	def footer
	 		y_position = cursor
	 		bounding_box([0, y_position], :width => 500, :height => 200, :align => :center) do
	      		pad_top(20) { text "If you have any questions about this invoice, please contact:", :align => :center }
	      		pad_bottom(1) { text "Eric Vennaro: 860-462-9445, eric@consultmango.com", :size => 9, :align => :center }
	      		pad_bottom(1) { text "Kevin Wang: 440-391-3421, kevin@consultmango.com", size: 9, :align => :center }
	      		pad_top(10) { text "Thank You For!", size: 15, style: :italic, :align => :center }

	    	end
	 	end

	 	def line_items
	 		[['Description', 'Amount']] + 
	 		@order.line_items.map do |item|
	 			[item.product.title, item.product.price]
	 		end
	 	end

		def phone_number_format(phone)
			area_code = phone[0,3]
			prefix = phone[3,3]
			number = phone[6,4]
			complete_number = "(" + area_code + ")" + prefix + "-" + number
			return complete_number
		end
end

class HighlightCallback
	def initialize(options)
		@color = options[:color]
		@document = options[:document]
	end

	def render_behind(fragment)
		original_color = @document.fill_color
		@document.fill_color = @color
		@document.fill_rectangle(fragment.top_left, fragment.width + 60, fragment.height)
		@document.fill_color = original_color
	end
end