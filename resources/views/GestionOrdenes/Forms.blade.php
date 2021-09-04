    <div class="row">
        <div class="col-4">
            <label for="fecha_creacion">Fecha de creación</label>
            <input type="text" class="form-control" name="fecha_creacion" id="fecha_creacion" value="<?php echo date('Y-m-d H:i:s');?>" readonly>
        </div>
        <div class="col-4">
            <label for="fecha_asignacion">Fecha de asignación</label>
            <input type="date" class="form-control fecha_asignacion" name="fecha_asignacion" id="fecha_asignacion" required>
        </div>
        <div class="col-4">
            <label for="fecha_ejecucion">Fecha de ejecución</label>
            <input type="date" class="form-control fecha_ejecucion" name="fecha_ejecucion" id="fecha_ejecucion" onchange="ValidarFechaCrear(this.value)" required>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <label for="id_tipo">Tipo</label>
            <select class="form-control" id="id_tipo" name="id_tipo" required>
                <option></option>
                @foreach($tipos as $tipo)
                    <option value="{{$tipo->id_tipo}}">{{$tipo->nombre}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-6">
            <label for="id_operador">Operador</label>
            <select class="form-control" id="id_operador" name="id_operador" required>
                <option></option>
                @foreach($operadores as $operador)
                    <option value="{{$operador->id_operador}}">{{$operador->nombre}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <label for="resultado">Resultado</label>
            <input type="text" class="form-control" name="resultado" id="resultado" required autocomplete="off">
        </div>
        <div class="col-6">
            <label for="valor">Valor</label>
            <input type="number" step="0.1" class="form-control" name="valor" id="valor" required autocomplete="off">
        </div>
    </div>
<br>
<div class="modal-footer">
    <div class="form-group">
        <button type="submit" class="btn btn-primary">{{$modo}}</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
    </div>
</div>

