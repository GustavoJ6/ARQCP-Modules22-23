unsigned int greater_date(unsigned int date1, unsigned int date2) {

	// Split the date into year, month and date following that, Bits 0 to 7 are the month, Bits 8 to 23 are the year Bits 24 to 31 are the day
	unsigned int year1 = (date1 >> 8) & 0xFFFF; //	0xFFFF = 1111 1111 1111 1111 (16 bits) From 8 to 23 there are 16 bits. Right shift 8 bits and then AND with 0xFFFF to get the year
	unsigned int month1 = date1 & 0xFF; // 0xFF = 1111 1111 (8 bits) From 0 to 7 there are 8 bits. AND with 0xFF to get the month
	unsigned int day1 = (date1 >> 24) & 0xFF; // From 24 to 31 there are 8 bits. Right shift 24 bits and then AND with 0xFF to get the day

	unsigned int year2 = (date2 >> 8) & 0xFFFF;
	unsigned int month2 = date2 & 0xFF;
	unsigned int day2 = (date2 >> 24) & 0xFF;

	// If the year is greater, return date1
	if (year1 > year2) {
		return date1;

		// If year1 is less, return date2
	}
	else if (year2 > year1) {
		return date2;
	}

	// If the year is equal, check the month
	else {
		
		// If month1 is greater, return date1
		if (month1 > month2) {
			return date1;
		}
		
		// If month2 is greater, return date2
		else if (month2 > month1) {
			return date2;
		}

		// If the month is equal check the day
		else {
			if (day1 > day2) {
				return date1;
			}
			else {
				return date2;
			}
		}

	}
	// If the date is equal, return date1
	return date1;
}



