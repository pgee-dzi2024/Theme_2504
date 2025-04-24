from main.models import Course, Registration  # смени "app" с името на приложението си
from datetime import date

# Изтрий стари seed-нати данни (по желание)
Course.objects.all().delete()
Registration.objects.all().delete()

# Курсове
c1 = Course.objects.create(
    subject='Лятна математика',
    description='Занимания по приложна и забавна математика за ученици.',
    start_date=date(2024, 7, 1),
    end_date=date(2024, 7, 15),
    capacity=15
)
c2 = Course.objects.create(
    subject='Програмиране за деца',
    description='Въведение в Scratch и Python за деца 3-7 клас.',
    start_date=date(2024, 7, 5),
    end_date=date(2024, 7, 20),
    capacity=12
)
c3 = Course.objects.create(
    subject='Рисуване и изобразително изкуство',
    description='Курс по класическо и модерно рисуване за малки и големи.',
    start_date=date(2024, 7, 3),
    end_date=date(2024, 7, 25),
    capacity=10
)

# Регистрации
Registration.objects.create(
    child_name='Иван Георгиев',
    child_age=10,
    phone='+359888111222',
    email='ivan.g@kidsmail.bg',
    course=c1
)
Registration.objects.create(
    child_name='Мариела Тодорова',
    child_age=9,
    phone='+359887555444',
    email='mariela.t@email.com',
    course=c2
)
Registration.objects.create(
    child_name='Радослав Петров',
    child_age=11,
    phone='+359889777333',
    email='radoslav.p@example.bg',
    course=c1
)
Registration.objects.create(
    child_name='Даниела Цветкова',
    child_age=8,
    phone='+359889222111',
    email='dani.cv@mail.bg',
    course=c3
)
