from django.db import models

# Create your models here.


class TripHistory(models.Model):
    trip_id = models.AutoField(primary_key=True)
    user_id = models.IntegerField()
    place = models.CharField(max_length=30)
    starting_time = models.TimeField()
    ending_time = models.TimeField()
    total_cost = models.IntegerField()

    class Meta:
        # managed = False
        db_table = 'trip_history'

