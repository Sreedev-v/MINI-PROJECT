from django.db import models

# Create your models here.


class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    gender = models.CharField(max_length=20)
    age = models.IntegerField()
    location = models.CharField(max_length=30)
    phone_number = models.CharField(max_length=10)
    email = models.CharField(max_length=20)
    status = models.CharField(max_length=20)
    password = models.CharField(max_length=100)

    class Meta:
        # managed = False
        db_table = 'user'



