class InvoicePdf < Prawn::Document

	def initialize(order, view)
		super()
		@order = order
		@view = view
		header
		bill_to
		move_down 20
		text_content
		footer
	end

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
		highlight = HighlightCallback.new(:color => '3a4c89', :document => self)
		formatted_text [ { :text => 'BILL TO', :callback => highlight }], :size => 13, :color => 'FFFFFF'
		text "#{@order.name}"
		text "#{@order.college_name}"
		text "#{@order.address}"
		text "#{@order.state}, #{@order.zip_code}"
		text "#{@order.phone_number}"
	end

	def text_content
    	table line_items do
    		row(0).font_style = :bold
    		row(0).background_color = '3a4c89'
    		row(0).text_color = 'FFFFFF'
      		self.header = true
      		self.row_colors = ['DDDDDD', 'FFFFFF']
      		self.column_widths = [300, 200]
    	end
 	end

 	def footer
 		y_position = cursor
 		bounding_box([75, y_position-50], :width => 770, :height => 400) do
      		pad_top(20) { text "If you have any questions about this invoice, please contact:" }
      		pad_bottom(1) { text "Eric Vennaro: 860-462-9445, eric@consultmango.com", :size => 9, :align => :center }
      		pad_bottom(1) { text "Kevin Wang: 440-391-3421, kevin@consultmango.com", size: 9 }
      		pad_top(10) { text "Thank you", size: 15, style: :italic, :align => :center }

    	end
 	end

 	def line_items
 		[['Description', 'Amount']] + 
 		@order.line_items.map do |item|
 			[item.product.title, item.product.price]
 		end
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