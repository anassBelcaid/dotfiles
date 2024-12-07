#!/usr/bin/awk -f
BEGIN{
	FS = ","
	total = 0
}
{
	split($1, date, "-")
	if (date[1] = year && date[2] == month) {

	  total += $2
		
	}

}
END{
	printf("total expense for Year = %s, month = %s,  %.2f\n",year, month, total)
}

