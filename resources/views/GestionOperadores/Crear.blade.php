<div class="modal fade" id="CrearModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Crear Operador</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="{{url('/gestion-operadores')}}" method="post" enctype="multipart/form-data">
            @csrf
            @include('GestionOperadores.Forms',['modo'=>'Crear'])
          </form>
        </div>
        <div class="modal-footer">
        </div>
      </div>
    </div>
  </div>