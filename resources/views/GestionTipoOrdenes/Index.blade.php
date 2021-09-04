<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Gestionar Tipo Ordenes') }}
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
        @include('GestionTipoOrdenes.Crear')
        @include('GestionTipoOrdenes.Editar')
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
            @foreach($tipos as $tipo)
              <tr>
                <th scope="row">{{$tipo->id_tipo }}</th>
                <td>{{$tipo->nombre}}</td>
                <td>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#EditarModal" onclick="Editar({{$tipo->id_tipo}},'{{$tipo->nombre}}')" title="Editar">
                           Editar <i class="fa fa-pencil-square-o"></i>
                        </button>
                        <form action="{{url('tipo-eliminar')}}" method="post">
                            @csrf
                            <input type="hidden" id="id_tipo" name="id_tipo" value="{{$tipo->id_tipo}}">
                            <button class="btn btn-danger btn-sm" onclick=" return confirm('¿Quieres borrar?')" title="Borrar">Borrar <i class="fa fa-trash-o"></i></button>
                        </form>
                    </div>
              </tr>
            @endforeach
            </tbody>
          </table>
    </div>
    <script>
        function Editar(id_tipo,nombre){
            document.getElementById("id_tipo_editar").value = id_tipo;
            document.getElementById("nombre_tipo").value = nombre;
        }
    </script>
</x-app-layout>
