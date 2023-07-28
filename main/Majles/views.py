from django.shortcuts import render
from .models import Student
from .serializers import StudentSerializer
# Create your views here.

from rest_framework.generics import ListAPIView
class StudentList(ListAPIView):
    queryset = Student.objects.all()
    serializer_class = StudentSerializer