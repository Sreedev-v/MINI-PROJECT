from django.db import models
from user.models import User
from schedule.models import ScheduleRide
# Create your models here.

class Payment(models.Model):
    pay_id = models.AutoField(primary_key=True)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    amount = models.IntegerField()
    date = models.DateField()
    time = models.TimeField()
    status = models.CharField(max_length=20)
    # schedule_id = models.IntegerField()
    schedule=models.ForeignKey(ScheduleRide,to_field='schedule_id',on_delete=models.CASCADE)



    class Meta:
        # managed = False
        db_table = 'payment'

