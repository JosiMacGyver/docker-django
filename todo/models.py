from django.db import models

# Creating a model to define how the ToDo itens should be stored in the database

class Todo(models.Model):
    title = models.CharField(max_length=120)
    description = models.TextField()
    completed = models.BooleanField(default=False)

    def _str_(self):
        return self.title