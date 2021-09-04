<div class="modal fade" id="EditarModal" tabindex="-1" role="dialog" aria-labelledby="editar" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editar">Editar Orden</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="{{url('orden-editar')}}" method="post" enctype="multipart/form-data">
            @csrf
            <input type="hidden" id="id_orden_editar" name="id_orden">
              <div class="row">
                  <div class="col-4">
                      <label for="fecha_creacion_editar">Fecha de creación</label>
                      <input type="text" class="form-control" id="fecha_creacion_editar" name="fecha_creacion" value="<?php echo date('Y-m-d H:i:s'); ?>" readonly>
                  </div>
                  <div class="col-4">
                      <label for="fecha_asignacion_editar">Fecha de asignación</label>
                      <input type="date" class="form-control fecha_asignacion" id="fecha_asignacion_editar" name="fecha_asignacion" required>
                  </div>
                  <div class="col-4">
                      <label for="fecha_ejecucion_editar">Fecha de ejecución</label>
                      <input type="date" class="form-control fecha_ejecucion" id="fecha_ejecucion_editar"  name="fecha_ejecucion" onchange="ValidarFecha(this.value)" required>
                  </div>
              </div>
              <div class="row">
                  <div class="col-6">
                      <label for="id_tipo_editar">Tipo</label>
                      <select class="form-control" id="id_tipo_editar" name="id_tipo" required>
                          @foreach($tipos as $tipo)
                              <option value="{{$tipo->id_tipo}}">{{$tipo->nombre}}</option>
                          @endforeach
                      </select>
                  </div>
                  <div class="col-6">
                      <label for="operador_editar">Operador</label>
                      <select class="form-control" id="operador_editar" name="id_operador" required>
                          @foreach($operadores as $operador)
                              <option value="{{$operador->id_operador}}">{{$operador->nombre}}</option>
                          @endforeach
                      </select>
                  </div>
              </div>
              <div class="row">
                  <div class="col-6">
                      <label for="resultado_editar">Resultado</label>
                      <input type="text" class="form-control" id="resultado_editar" name="resultado" required>
                  </div>
                  <div class="col-6">
                      <label for="valor_editar">Valor</label>
                      <input type="number" step="0.1" class="form-control" id="valor_editar" name="valor" required autocomplete="off">
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
  </div>