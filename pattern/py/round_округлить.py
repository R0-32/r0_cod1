def two_decimal_places(n):
	return round(n* 100) / 100
	return round(n, 2)
    return float("{0:.2f}".format(n))
	dn = Decimal(str(n)).quantize(Decimal('.01'), rounding=ROUND_HALF_UP)
	return float(dn)
	return float("%.2f" % n)
	from numpy import round
    return round(n, decimals=2)
	return round(n+0.00005,2)
    return float(f'{n:.02f}')
two_decimal_places = lambda n : round(n,2)