<div class="modal fade" id="CrearModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Crear Orden</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{url('/gestion-ordenes')}}" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            @csrf
            @include('GestionOrdenes.Forms',['modo'=>'Crear'])
          </div>
        </form>
      </div>
    </div>
  </div>