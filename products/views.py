from django.shortcuts import render
from .models import Product

# Create your views here.

def all_products(request):
    """ 
    This view will show all of the products, including the ability to sort the products
    as well of searching through the website for specific products.
    """

    products = Product.objects.all()

    context = {
        'products': products,
    }

    return render(request, 'products/products.html', context)