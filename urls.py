from django.conf.urls.defaults import *
from django.views.static import serve
from settings import DOC_ROOT
import os

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # site root url
    (r'^$', 'tali.theapp.views.under_construction', {}, 'home_page'),
    
    # site media
    (r'^static/(.*)$',  serve, { 'document_root': os.path.join(DOC_ROOT,'media/') }),
    
    # Uncomment the next line to enable the admin:
    (r'^admin/', include(admin.site.urls)),
)
