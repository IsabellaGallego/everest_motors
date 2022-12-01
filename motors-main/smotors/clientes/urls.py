
from django.urls import path
from . import views


urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('clientes/crearCliente/', views.crearCliente, name='crearCliente'),
    path('clientes/editarCliente/<int:cedula>', views.editarCliente, name='editarCliente'),
    path('clientes/eliminarCliente/<int:cedula>', views.eliminarCliente, name='eliminarCliente'),
    path('clientes/altocilindraje/', views.altocilindraje, name='altocilindraje'),
    path('clientes/autos/', views.autos, name='autos'),
    path('clientes/contactanos/', views.contactanos, name='contactanos'),
    path('clientes/cotiza/', views.cotiza, name='cotiza'),
    path('clientes/deportivos/', views.deportivos, name='deportivos'),     
    path('clientes/ecologicos/', views.ecologicos, name="ecologicos"),    
    path('clientes/error/', views.error, name="error"),    
    path('clientes/Registrate/', views.Registrate, name="Registrate"),    
    path('clientes/todoterreno/', views.todoterreno, name="todoterreno"),    
    path('clientes/vehiculos/', views.vehiculos, name="vehiculos"),
    path('clientes/clientes/', views.clientes, name='clientes'),  
    path('clientes/clientes_Reg/', views.clientes_Reg, name='clientes_Reg'),  





]
#esta ruta , el nombre se puede conectar al navbar mediante el nombre
