<div class="modal fade" id="CargarModal" tabindex="-1" role="dialog" aria-labelledby="cargar" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="cargar">Crear Orden Masivas</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{url('orden-cargar')}}" method="post" enctype="multipart/form-data">
           <div class="modal-body">
                @csrf
                <div class="row">
                    <div class="col-12">
                        <input type="file" class="form-control" name="archivo_import" id="file" accept="application/vnd.ms-Excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" required>
                    </div>
                </div>
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