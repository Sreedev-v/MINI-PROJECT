# Generated by Django 3.2.16 on 2022-10-30 04:42

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('user_id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=20)),
                ('gender', models.CharField(max_length=20)),
                ('age', models.IntegerField()),
                ('location', models.CharField(max_length=30)),
                ('phone_number', models.CharField(max_length=10)),
                ('email', models.CharField(max_length=20)),
                ('status', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'user',
            },
        ),
    ]