<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Kriteria</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>dashboard">Dashboard</a></li>
              <li class="breadcrumb-item active">Kriteria</li>
            </ol>
            
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">


      <div class="row">
          <!-- Left col -->
          <section class="col-lg-12">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Kriteria C1 - LUAS BANGUNAN
                </h3>
                <div class="card-tools">
                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat btn-primary float-sm-right" data-toggle="modal" data-target="#modal-lg-c1">
                          <i class="fas fa-plus"></i> Tambah Data
                        </button>
                      </li>
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat bg-info" data-card-widget="collapse" title="Collapse">
                          <i class="fas fa-plus"></i> Minimize
                        </button>
                      </li>
                    </ul>
                  
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
                
              <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Sub Kriteria</th>
                      <th style="text-align: center;">Ranking Penilaian</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($kriteria_c1 as $c1){ ?>
                  <tr>
                      <td><?php echo $no++; ?></td>
                      <td><?php echo $c1->sub_kriteria; ?></td>
                      <td align="center"><?php echo $c1->nilai; ?></td>
                      <td><a href="javascript:void(0);" data-toggle="modal" data-target="#editc1<?php echo $c1->id_kriteria; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusc1<?php echo $c1->id_kriteria; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                      </td>
                  </tr>
                  <?php } ?>
                  </tbody>
                </table>

              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- Kriteria C2 -->

            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Kriteria C2 - SARANA & PRASARANA
                </h3>
                <div class="card-tools">
                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat btn-primary float-sm-right" data-toggle="modal" data-target="#modal-lg-c2">
                          <i class="fas fa-plus"></i> Tambah Data
                        </button>
                      </li>
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat bg-info" data-card-widget="collapse" title="Collapse">
                          <i class="fas fa-plus"></i> Minimize
                        </button>
                      </li>
                    </ul>
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
              <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Sub Kriteria</th>
                      <th style="text-align: center;">Ranking Penilaian</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($kriteria_c2 as $c2){ ?>
                  <tr>
                      <td><?php echo $no++; ?></td>
                      <td><?php echo $c2->sub_kriteria; ?></td>
                      <td align="center"><?php echo $c2->nilai; ?></td>
                      <td><a href="javascript:void(0);" data-toggle="modal" data-target="#editc2<?php echo $c2->id_kriteria; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusc2<?php echo $c2->id_kriteria; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                      </td>
                  </tr>
                  <?php } ?>
                  </tbody>
                </table>
              </div><!-- /.card-body -->
            </div>

            <!-- Tutup Kriteria C2 -->

            <!-- Kriteria 3 -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Kriteria C3 - HARGA
                </h3>
                <div class="card-tools">
                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat btn-primary float-sm-right" data-toggle="modal" data-target="#modal-lg-c3">
                          <i class="fas fa-plus"></i> Tambah Data
                        </button>
                      </li>
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat bg-info" data-card-widget="collapse" title="Collapse">
                          <i class="fas fa-plus"></i> Minimize
                        </button>
                      </li>
                    </ul>
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
              <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Sub Kriteria</th>
                      <th style="text-align: center;">Ranking Penilaian</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($kriteria_c3 as $c3){ ?>
                  <tr>
                      <td><?php echo $no++; ?></td>
                      <td><?php echo $c3->sub_kriteria; ?></td>
                      <td align="center"><?php echo $c3->nilai; ?></td>
                      <td><a href="javascript:void(0);" data-toggle="modal" data-target="#editc3<?php echo $c3->id_kriteria; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusc3<?php echo $c3->id_kriteria; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                      </td>
                  </tr>
                  <?php } ?>
                  </tbody>
                </table>
              </div><!-- /.card-body -->
            </div>
            <!-- Tutup Kriteria C3 -->

          </section>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-12">

          <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Kriteria C4 - AKSES PERUMAHAN DARI PUSAT KOTA
                </h3>
                <div class="card-tools">
                    <ul class="nav nav-pills ml-auto">
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat btn-primary float-sm-right" data-toggle="modal" data-target="#modal-lg-c4">
                          <i class="fas fa-plus"></i> Tambah Data
                        </button>
                      </li>
                      <li class="nav-item">
                        <button type="button" class="btn btn-flat bg-info" data-card-widget="collapse" title="Collapse">
                          <i class="fas fa-plus"></i> Minimize
                        </button>
                      </li>
                    </ul>
                </div>
              </div><!-- /.card-header -->
              <div class="card-body">
              <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Sub Kriteria</th>
                      <th style="text-align: center;">Ranking Penilaian</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($kriteria_c4 as $c4){ ?>
                  <tr>
                      <td><?php echo $no++; ?></td>
                      <td><?php echo $c4->sub_kriteria; ?></td>
                      <td align="center"><?php echo $c4->nilai; ?></td>
                      <td><a href="javascript:void(0);" data-toggle="modal" data-target="#editc4<?php echo $c4->id_kriteria; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusc4<?php echo $c4->id_kriteria; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                      </td>
                  </tr>
                  <?php } ?>
                  </tbody>
                </table>
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- Tutup Kriteria C4 -->
          </section>
          <!-- right col -->
        </div>
       
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        
         
          
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

<!-- Modal Kriteria C1 -->
  <div class="modal fade" id="modal-lg-c1">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>kriteria/createc1" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Sub Kriteria C1</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sub Kriteria</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="subc1" placeholder="Ketikan sub kriteria">
                  </div>

                  <div class="form-group">
                    <label>Ranking Penilaian</label>
                    <select class="form-control" name="r1">
                      <option selected="selected" value="">-Pilih Ranking Penilaian-</option>
                      <?php foreach($bobot as $a){ ?>
                      <option value="<?php echo $a->id_nilai; ?>"><?php echo $a->bobot; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                  <!-- /.form-group -->

            </div>

            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      <!-- Modal kriteria C2 -->
      <div class="modal fade" id="modal-lg-c2">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>kriteria/createc2" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Sub Kriteria C2</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sub Kriteria</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="subc2" placeholder="Ketikan sub kriteria">
                  </div>

                  <div class="form-group">
                    <label>Ranking Penilaian</label>
                    <select class="form-control" name="r2">
                      <option selected="selected" value="">-Pilih Ranking Penilaian-</option>
                      <?php foreach($bobot as $b){ ?>
                      <option value="<?php echo $b->id_nilai; ?>"><?php echo $b->bobot; ?></option>
                      <?php } ?>
                    </select>
                  </div>
                  <!-- /.form-group -->

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      <!-- Modal kriteria C3 -->
      <div class="modal fade" id="modal-lg-c3">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>kriteria/createc3" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Sub Kriteria C3</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sub Kriteria</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="subc3" placeholder="Ketikan sub kriteria">
                  </div>

                  <div class="form-group">
                    <label>Ranking Penilaian</label>
                    <select class="form-control" name="r3">
                      <option selected="selected" value="">-Pilih Ranking Penilaian-</option>
                      <?php foreach($bobot as $c){ ?>
                      <option value="<?php echo $c->id_nilai; ?>"><?php echo $c->bobot; ?></option>
                      <?php } ?>
                    </select>
                  </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      <!-- Modal kriteria C4 -->
      <div class="modal fade" id="modal-lg-c4">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>kriteria/createc4" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Sub Kriteria C4</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sub Kriteria</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="subc4" placeholder="Ketikan sub kriteria">
                  </div>

                  <div class="form-group">
                    <label>Ranking Penilaian</label>
                    <select class="form-control" name="r4">
                      <option selected="selected" value="">-Pilih Ranking Penilaian-</option>
                      <?php foreach($bobot as $d){ ?>
                      <option value="<?php echo $d->id_nilai; ?>"><?php echo $d->bobot; ?></option>
                      <?php } ?>
                    </select>
                  </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      <!-- Modal kriteria C5 -->
      <div class="modal fade" id="modal-lg-c5">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>kriteria/createc5" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Sub Kriteria C5</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sub Kriteria</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="subc5" placeholder="Ketikan sub kriteria">
                  </div>

                  <div class="form-group">
                    <label>Ranking Penilaian</label>
                    <select class="form-control" name="r5">
                      <option selected="selected" value="">-Pilih Ranking Penilaian-</option>
                      <?php foreach($bobot as $e){ ?>
                      <option value="<?php echo $e->id_nilai; ?>"><?php echo $e->bobot; ?></option>
                      <?php } ?>
                    </select>
                  </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      <!-- Modal kriteria C6 -->
      <div class="modal fade" id="modal-lg-c6">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>kriteria/createc6" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Sub Kriteria C6</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sub Kriteria</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="subc6" placeholder="Ketikan sub kriteria">
                  </div>

                  <div class="form-group">
                    <label>Ranking Penilaian</label>
                    <select class="form-control" name="r6">
                      <option selected="selected" value="">-Pilih Ranking Penilaian-</option>
                      <?php foreach($bobot as $f){ ?>
                      <option value="<?php echo $f->id_nilai; ?>"><?php echo $f->bobot; ?></option>
                      <?php } ?>
                    </select>
                  </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

      

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type='text/javascript'>

<?php if($this->session->flashdata('message') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data sub kriteria berhasil di tambahkan",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data sub kriteria gagal di tambahkan !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

</script>