from rest_framework.routers import DefaultRouter
from .views import CourseViewSet, RegistrationViewSet

router = DefaultRouter()
router.register(r'courses', CourseViewSet, basename='course')
router.register(r'registrations', RegistrationViewSet, basename='registration')

urlpatterns = router.urls