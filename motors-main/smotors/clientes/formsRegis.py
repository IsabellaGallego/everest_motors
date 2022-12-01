from dataclasses import fields
from django import forms
from .models import  Registrar



class RegistrarseForm(forms.ModelForm):
    class Meta:
        model = Registrar
        fields = '__all__'##usa todos los campos en el forms

