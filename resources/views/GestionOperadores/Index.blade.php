<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Gestionar Operadores') }}
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
        @include('GestionOperadores.Crear')
        @include('GestionOperadores.Editar')
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#CrearModal">Crear <i class="fa fa-user-plus"></i></button>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Acciones</th>
              </tr>
            </thead>
            <tbody>
            @foreach($operadores as $operador)
              <tr>
                <th scope="row">{{$operador->id_operador}}</th>
                <td>{{$operador->nombre}}</td>
                <td>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#EditarModal" onclick="Editar({{$operador->id_operador}},'{{$operador->nombre}}')" title="Editar">
                           Editar <i class="fa fa-pencil-square-o"></i>
                        </button>
                        <form action="{{url('operadores-eliminar')}}" method="post">
                            @csrf
                            <input type="hidden" id="operador_id" name="id_operador" value="{{$operador->id_operador}}">
                            <button class="btn btn-danger btn-sm" onclick=" return confirm('¿Quieres borrar?')" title="Borrar">Borrar <i class="fa fa-trash-o"></i></button>
                        </form>
                    </div>
              </tr>
            @endforeach
            </tbody>
          </table>
    </div>
    <script>
        function Editar(operador,nombre){
            document.getElementById("operador_id_editar").value = operador;
            document.getElementById("nombre_operador").value = nombre;
        }
        function Eliminar(operador){
            document.getElementById("operador_id_eliminar").value = operador;
        }
    </script>
</x-app-layout>
