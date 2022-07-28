from django.contrib.auth.models import AbstractUser
from django.db import models


class CustomUser(AbstractUser):
    """Default User model

    Args:
        AbstractUser (_type_): _description_

    Returns:
        _type_: _description_
    """

    pass
    # add additional fields in here

    def __str__(self):
        return self.username
