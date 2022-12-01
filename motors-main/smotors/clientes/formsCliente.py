from dataclasses import fields
from django import forms
from .models import Clientes

class ClienteForm(forms.ModelForm) :
    class Meta:
        model = Clientes
        fields = '__all__'  ##usa todos los campos en el forms



