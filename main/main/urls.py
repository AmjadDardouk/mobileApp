
from django.contrib import admin
from django.urls import path
from Majles import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('student/', views.StudentList.as_view()),
]
