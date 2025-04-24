from rest_framework import serializers
from .models import Course, Registration


class CourseSerializer(serializers.ModelSerializer):
    taken_places = serializers.IntegerField(read_only=True)
    available_places = serializers.IntegerField(read_only=True)

    class Meta:
        model = Course
        fields = '__all__'


class RegistrationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Registration
        fields = '__all__'

    def validate(self, data):
        course = data['course']
        if course.available_places <= 0:
            raise serializers.ValidationError("Няма свободни места по този курс.")
        return data