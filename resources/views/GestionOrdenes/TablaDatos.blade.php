<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tabla de datos') }}
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
        @if(Session::has('mensaje'))
            {{Session::get('mensaje')}}
        @endif
        <table class="table">
            <thead>
                <th class="text-center">No. Orden</th>
                <th class="text-center">F. creación</th>
                <th class="text-center">Tipo</th>
                <th class="text-center">F. asignación</th>
                <th class="text-center">F.ejecución</th>
                <th class="text-center">Operador</th>
                <th class="text-center">Resultado</th>
                <th class="text-center">Valor</th>  
            </thead>
            <tbody>
                @foreach($ordenes as $orden)
                    <tr>
                        <td class="text-center">{{$orden->id_orden}}</td>
                        <td class="text-center">{{$orden->fecha_creacion}}</td>
                        <td class="text-center">{{$orden->nombre_tipo}}</td>
                        <td class="text-center">{{$orden->fecha_asignacion}}</td>
                        <td class="text-center">{{$orden->fecha_ejecucion}}</td>
                        <td class="text-left">{{$orden->nombre_operador}}</td>
                        <td class="text-center">{{$orden->resultado}}</td>
                        <td class="text-center">{{$orden->valor}}</td>
                    </tr>
                @endforeach
            </tbody>
          </table>
    </div>
</x-app-layout>
