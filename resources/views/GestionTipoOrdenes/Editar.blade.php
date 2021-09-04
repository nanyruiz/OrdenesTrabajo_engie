<div class="modal fade" id="EditarModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Editar Tipo Orden</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="{{url('tipo-editar')}}" method="post" enctype="multipart/form-data">
            @csrf
            <input type="hidden" id="id_tipo_editar" name="id_tipo">
            <div class="form-group">
                <label for="name_operador">Nombre</label>
                <input type="text" class="form-control" id="nombre_tipo" aria-describedby="name" name="nombre" placeholder="Ingrese el nombre del tipo de orden" required>
            </div>
            <div class="modal-footer">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>