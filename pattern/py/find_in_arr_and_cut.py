# найти индекс елемента массива
# и сложить в arr[index]
# извлечь из массива елемменты до arr[index]

arr = url.split('#')  # Разделяем URL на часть до и после '#'
result = arr[0]  # Берем часть URL до '#'

def remove_url_anchor(url):
	return url.split('#')[0]
	return url.partition('#')[0]	
	import re
	return re.sub('#.*$','',url)
	return url[:url.index('#')] if '#' in url else url