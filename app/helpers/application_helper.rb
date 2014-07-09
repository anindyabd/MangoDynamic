module ApplicationHelper
	#returns the full title on a per-page basis.
	def full_title(page_title)
		base_title = "Mango, Advertise To The World"
		if page_title.empty?
			base_title
		else
			"#{page_title}"
		end
	end
 
	def bootstrap_class_for flash_type
		case flash_type
		when :success
			"alert-success"
		when :error
			"alert-error"
		when :alert
			"alert-block"
		when :notice
			"alert-info"
		else
			flash_type.to_s
		end
	end
end
