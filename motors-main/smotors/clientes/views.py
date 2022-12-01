from django.shortcuts import render, HttpResponse, redirect

#from smotors.clientes.formsCliente import ClienteForm
from .models import Clientes, Registrar

from .formsCliente import ClienteForm
from .formsRegis import RegistrarseForm
# Create your views here.
#@app.route('/ ')

#****************************** INICIO **********************************************************
def inicio(request) :
        return render(request, 'clientes/index.html')

#****************************** FIN **********************************************************


#****************************** INICIO **********************************************************
def altocilindraje(request):
        return render(request, 'clientes/altocilindraje.html')

#****************************** FIN **********************************************************

#****************************** INICIO **********************************************************
def autos(request):
        return render(request, 'clientes/autos.html')

#****************************** FIN **********************************************************

#****************************** INICIO **********************************************************
def contactanos(request):
        return render(request, 'clientes/contactanos.html')

#****************************** FIN **********************************************************

#****************************** INICIO **********************************************************
def cotiza(request):
        return render(request, 'clientes/cotiza.html')

#****************************** FIN **********************************************************
#****************************** INICIO **********************************************************
def deportivos(request):
        return render(request, 'clientes/deportivos.html')

#****************************** FIN **********************************************************

#****************************** INICIO **********************************************************

def ecologicos(request):
        return render(request, 'clientes/ecologicos.html')

#****************************** FIN **********************************************************

#****************************** INICIO **********************************************************
def error(request):
        return render(request, 'clientes/error.html')

#****************************** FIN **********************************************************

#****************************** INICIO FORMULARIO DE REGISTRARSE *********************************************************       




"""def Registrate(request) : #Registrar en una pagina Registrar
        #aqui se envia los datos de enviar
        if request.method == 'POST' :
                form = RegistrarseForm(request.POST) # CREA EL FORMULARIO CON LOS DATOS
                #print (request.POST)
                if form.is_valid() :
                        form.save()
                        return redirect('clientes_Reg')#redirige a la pagina clientes
        else :
                form = RegistrarseForm() #se crea un forms
        contexto = {
                'form': form,

        }
        return render(request, 'clientes/Registrate.html', contexto)"""


def Registrate(request) :# Usar para Agrergar a Cliente
        #aqui se envia los datos de enviar
        if request.method == 'POST' :
                form = ClienteForm(request.POST) # CREA EL FORMULARIO CON LOS DATOS
                #print (request.POST)
                if form.is_valid() :
                        form.save()
                        return redirect('clientes')#redirige a la pagina clientes
        else :
                form = ClienteForm() #se crea un forms
        contexto = {
                'form': form,
                'tituloh1': 'Registrate',

        }
        return render(request, 'clientes/Registrate.html', contexto)



def crearCliente(request) :
        #aqui se envia los datos de enviar
        if request.method == 'POST' :
                form = ClienteForm(request.POST) # CREA EL FORMULARIO CON LOS DATOS
                #print (request.POST)
                if form.is_valid() :
                        form.save()
                        return redirect('clientes')#redirige a la pagina clientes
        else :
                form = ClienteForm() #se crea un forms
        contexto = {
                'form': form,
                'tituloh1': 'Crear Cliente'

        }
        return render(request, 'clientes/crearCliente.html', contexto)







#****************************** FIN FORMULARIO DE REGISTRARSE *********************************************************       


#****************************** INICIO **********************************************************
def todoterreno(request):
        return render(request, 'clientes/todoterreno.html')

#****************************** FIN **********************************************************

#****************************** INICIO **********************************************************
def vehiculos(request):
        return render(request, 'clientes/vehiculos.html')

#****************************** FIN **********************************************************







def  clientes(request):
        #return HttpResponse('<h1>Pagina Principal</h1>')

        clientes = Clientes.objects.all()#se trae todos los registros de la tabla clientes
        print(clientes)#definir llave
        contexto = {
                'clientes' : clientes
        }
        return render(request, 'clientes/clientes.html', contexto)

        
def clientes_Reg(request):
        registrar = Registrar.objects.all()#se trae todos los registros de la tabla clientes
        print(clientes)#definir llave
        contexto = {
                'clientes' : registrar
        }
        return render(request, 'clientes/clientes_Reg.html',contexto)       

#@app.route('editarCliente/<int:id')
def editarCliente(request, cedula) :
                
        cliente = Clientes.objects.get(cedula_cliente = cedula)   #revisar como se llama en el import 
#aqui se envia los datos de enviar
        if request.method == 'POST':  #cuando boton guardar
        # CREA EL FORMULARIO CON LOS DATOS
                form = ClienteForm(request.POST, instance=cliente)
                #print (request.POST)
                if form.is_valid():
                        form.save() # salva 
                        return redirect('clientes')  # redirige a la pagina clientes
        form = ClienteForm( instance=cliente)# se le pasa un forms vacio, pero luego se le dice toma los datos
        contexto = {
                'form' : form,
                'tituloh1' : 'Actualizar Cliente'
        }
        return render(request, 'clientes/crearCliente.html', contexto)


def  eliminarCliente(request, cedula) :
        cliente = Clientes.objects.get(cedula_cliente=cedula)
        if request.method == 'POST' :
                cliente.delete()
                return redirect('clientes')
        contexto = {
                'tituloh1' : 'Eliminar Cliente',
                'nombre_cliente' : cliente.nombre_cliente
                }
        return render(request, 'clientes/eliminar.html', contexto)










