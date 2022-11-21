from django.db import models
from user.models import User

# Create your models here.
class Rating(models.Model):
    rating_id = models.AutoField(primary_key=True)
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    # user_id = models.IntegerField()
    rating = models.CharField(max_length=10)
    date = models.DateField()
    time = models.TimeField()
    driver_id = models.IntegerField()


    class Meta:
        managed = False
        db_table = 'rating'


