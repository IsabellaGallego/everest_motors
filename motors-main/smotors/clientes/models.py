from unittest.util import _MAX_LENGTH
from django.db import models

# Create your models here.
#
class Clientes(models.Model):
    cedula_cliente = models.CharField(primary_key=True, max_length=15)
    #cedula_cliente = models.CharField(max_length=15)
    nombre_cliente = models.CharField(max_length=50)
    apellidos_cliente = models.CharField(max_length=50)
    direccion_cliente = models.CharField(max_length=100)
    ciudad_cliente = models.CharField(max_length=50)
    pais_cliente = models.CharField(max_length=50)
    telefono_cliente = models.CharField(max_length=30)
    email_cliente = models.CharField(max_length=50)


    def __str__(self):
        return f'{self.nombre_cliente} {self.apellidos_cliente}'


class Registrar(models.Model):

    cedula = models.CharField(primary_key=True, max_length=15)
    nombre = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=50)
    direccion = models.CharField(max_length=50)
    ciudad = models.CharField(max_length=50)
    pais = models.CharField(max_length=50)
    telefono = models.CharField(max_length=50)
    email = models.CharField(max_length=50) 

    def __str__(self):
        return f'{self.nombre} {self.apellidos}'
