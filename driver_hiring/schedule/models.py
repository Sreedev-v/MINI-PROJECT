from django.db import models
from driver.models import Driver
from user.models import User
# Create your models here.



class ScheduleRide(models.Model):
    schedule_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    # driver_id = models.IntegerField()
    driver=models.ForeignKey(Driver,to_field='driver_id',on_delete=models.CASCADE)
    place = models.CharField(max_length=20)
    starting_time = models.TimeField()
    ending_time = models.TimeField()
    date = models.DateField()
    status = models.CharField(max_length=20)

    class Meta:
        # managed = False
        db_table = 'schedule_ride'

