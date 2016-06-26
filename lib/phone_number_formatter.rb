# This method takes a string like `"4122226644"` and
# returns a properly formatted phone number.

def format_phone_number(phone_number_str)
	x = phone_number_str.split(//)
	phone_number_str = ""
	for element in x
		if element == "0" or element.to_i() != 0
			phone_number_str += element
		end
	end
	phone_number_str.insert(0, "(")
	phone_number_str.insert(4, ")")
	phone_number_str.insert(5, " ")
	phone_number_str.insert(9, "-")
	return phone_number_str
end