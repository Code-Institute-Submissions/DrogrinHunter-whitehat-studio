from django.shortcuts import render

def view_bag(request):
    """ This view returns the content of the shopping bag """

    return render(request, 'bag/bag.html')