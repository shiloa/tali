from django.shortcuts import render_to_response, HttpResponse, HttpResponseRedirect, Http404
from django.template import RequestContext
from pdb import set_trace as debugger

def under_construction(request):
    """the classic 'site is under construction' page"""
    return render_to_response('construction.tpl', context_instance=RequestContext(request))
