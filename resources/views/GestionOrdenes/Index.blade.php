<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Gestionar Ordenes') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                
            </div>
        </div>
    </div>
    <div class="container">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        @if(isset($ordenes))
            @include('GestionOrdenes.Crear')
            @include('GestionOrdenes.Editar')
            @include('GestionOrdenes.CargarMasiva')
        @endif
        @if(Session::has('mensaje'))
            {{Session::get('mensaje')}}
        @endif
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#CrearModal">Crear <i class="fa fa-user-plus"></i></button>
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#CargarModal">Cargar Archivo <i class="fa fa-cloud-upload"></i></button>
        <table class="table">
            <thead>
                <th class="text-center">ID</th>
                <th class="text-center">Operador</th>
                <th class="text-center">Fecha de creación</th>
                <th class="text-center">Fecha de asignación</th>
                <th class="text-center">Fecha de ejecución</th>
                <th class="text-center">Tipo</th>
                <th class="text-center">Acciones</th>
            </thead>
            <tbody>
            @foreach($ordenes as $orden)
              <tr>
                <th scope="row">{{$orden->id_orden }}</th>
                <td>{{$orden->nombre_operador}}</td>
                <td class="text-center">{{$orden->fecha_creacion}}</td>
                <td class="text-center">{{$orden->fecha_asignacion}}</td>
                <td class="text-center">{{$orden->fecha_ejecucion}}</td>
                <td class="text-center">{{$orden->nombre_tipo}}</td>
                <td>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#EditarModal" onclick="Editar({{$orden->id_orden}},'{{$orden->fecha_creacion}}','{{$orden->fecha_asignacion}}','{{$orden->fecha_ejecucion}}','{{$orden->id_tipo}}','{{$orden->resultado}}','{{$orden->valor}}','{{$orden->id_operador}}')" title="Editar">
                           Editar <i class="fa fa-pencil-square-o"></i>
                        </button>
                        <form action="{{url('orden-eliminar')}}" method="post">
                            @csrf
                            <input type="hidden" id="id_orden" name="id_orden" value="{{$orden->id_orden}}">
                            <button class="btn btn-danger btn-sm" onclick=" return confirm('¿Quieres borrar?')" title="Borrar">Borrar <i class="fa fa-trash-o"></i></button>
                        </form>
                    </div>
              </tr>
            @endforeach
            </tbody>
          </table>
    </div>
    <script>

       function ValidarFechaCrear(valor){
            
            fecha_ejecucion=$('#fecha_ejecucion').val();
            fecha_asignacion=$('#fecha_asignacion').val();
            if(fecha_ejecucion>fecha_asignacion){
                alert("La FECHA DE EJECUCIÓN no puede ser mayor a la FECHA DE ASIGNACIÓN");
                fecha_ejecucion=$('#fecha_ejecucion').val(''); 
            }
        }

        function ValidarFecha(valor){
            
            fecha_ejecucion=$('#fecha_ejecucion_editar').val();
            fecha_asignacion=$('#fecha_asignacion_editar').val();
            console.log(fecha_ejecucion,fecha_asignacion);
            if(fecha_ejecucion>fecha_asignacion){
                alert("La FECHA DE EJECUCIÓN no puede ser mayor a la FECHA DE ASIGNACIÓN");
                fecha_ejecucion=$('#fecha_ejecucion_editar').val(''); 
            }
        }


        function Editar(id_orden,fecha_creacion,fecha_asignacion,fecha_ejecucion,id_tipo,resultado,valor,id_operador){
            document.getElementById("id_orden_editar").value = id_orden;
            document.getElementById("fecha_creacion_editar").value = fecha_creacion;
            document.getElementById("fecha_asignacion_editar").value = fecha_asignacion;
            document.getElementById("fecha_ejecucion_editar").value = fecha_ejecucion;
            document.getElementById("id_tipo_editar").selectedIndex = id_tipo;
            document.getElementById("operador_editar").selectedIndex = id_operador;
            document.getElementById("resultado_editar").value = resultado;
            document.getElementById("valor_editar").value = valor;
        }
    </script>
</x-app-layout>
