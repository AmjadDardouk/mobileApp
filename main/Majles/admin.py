from django.contrib import admin
from Majles.models import Student
# Register your models here.
admin.site.register(Student)
class StudentAdmin(admin.ModelAdmin):
    list_display = ['id','name','des']
