import requests

'''Calculates how much it will cost you to buy all the clocks and watches in the store.'''

total_cost = 0
page = 1
retrieve = True

# Retrieve and search JSON from each page until reaching an empty product list
while (retrieve):
	response = requests.get("http://shopicruit.myshopify.com/products.json?page="+str(page))
	print "RETRIEVED FROM:", (response.url)
	print "STATUS CODE:", (response.status_code)
	data = response.json()
	
	# Check if product list is empty 
	if (data['products']):
		print 'Page %d product list:' % page
		
		# Look for "product_type" of "Clock" and "Watch". Add "price" of each "variant" to "total_cost".
		for product in data['products']:
			if product['product_type'] in ('Clock', 'Watch'):
				for variant in product['variants']:
					print '%s %s: $ %s' % (variant['title'], product['title'], variant['price'])
					total_cost += float(variant['price'])
					print '*** TOTAL COST: $', total_cost, '***'		
		
		# Move to next page
		page += 1
		
	else:
		print "Page %d product list is empty." % page
		print "* FINAL TOTAL COST: $", total_cost, '*'
		retrieve = False 

