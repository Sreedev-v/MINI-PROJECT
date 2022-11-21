from django.db import models

# Create your models here.
class Driver(models.Model):
    driver_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30)
    gender = models.CharField(max_length=10)
    location = models.CharField(max_length=30)
    vehicle_type = models.CharField(max_length=30)
    vehicle_number = models.CharField(max_length=20)
    licence_number =  models.CharField(max_length=20)
    phone_no = models.CharField(max_length=10)
    email = models.CharField(max_length=20)
    password = models.CharField(max_length=20)
    status = models.CharField(max_length=20)

    class Meta:
        # managed = False
        db_table = 'driver'

