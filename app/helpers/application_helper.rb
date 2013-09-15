module ApplicationHelper

	def get_color_of_status(status)
		case(status)
		when "Need" then "red"
		when "Pending" then "orange"
		when "Order Complete" then "green"
		when "Delivered" then "blue"
		else "white" end
	end

end
