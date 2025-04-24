from django.db import models


class Course(models.Model):
    subject = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    start_date = models.DateField()
    end_date = models.DateField()
    capacity = models.PositiveIntegerField()

    def __str__(self):
        return f"{self.subject} ({self.start_date} – {self.end_date})"

    @property
    def taken_places(self):
        return self.registration_set.count()

    @property
    def available_places(self):
        return self.capacity - self.taken_places


class Registration(models.Model):
    child_name = models.CharField(max_length=100)
    child_age = models.PositiveIntegerField()
    phone = models.CharField(max_length=20)
    email = models.EmailField()
    course = models.ForeignKey(Course, related_name="registrations", on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.child_name} | {self.course.subject}"