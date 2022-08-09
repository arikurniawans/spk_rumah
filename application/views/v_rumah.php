<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Perumahan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>dashboard">Dashboard</a></li>
              <li class="breadcrumb-item active">Perumahan</li>
            </ol>
            
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
      <button type="button" class="btn btn-flat btn-info float-sm-right" data-toggle="modal" data-target="#modal-lg">
            <i class="fa fa-plus" aria-hidden="true"></i> Tambah Data
      </button><br/><br/>
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
       
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        
          <!-- Left col -->
          <section class="col-lg-12 connectedSortable">
          
          <div class="card">
              <div class="card-header">
                <h3 class="card-title">Data Perumahan</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>NO</th>
                    <th>NAMA PERUMAHAN</th>
                    <th>LOKASI</th>
                    <th>AKSI</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($rumah as $data){ ?>
                  <tr>
                      <td><?php echo $no++; ?></td>
                      <td><?php echo $data->nama_perumahan; ?></td>
                      <td><?php echo $data->lokasi; ?></td>
                      <td>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#editrumah<?php echo $data->id_rumah; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusrumah<?php echo $data->id_rumah; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                      </td>
                  </tr>

                  <div class="modal fade" id="editrumah<?php echo $data->id_rumah; ?>">
                          <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                            <form action="<?php echo base_url(); ?>rumah/edit" method="post">
                              <div class="modal-header" style="background-color: #17a2b8; color: white;">
                                <h4 class="modal-title">Ubah Data Perumahan</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Nama Perumahan</label>
                                      <input type="hidden" name="id" value="<?php echo $data->id_rumah; ?>"/>
                                      <input type="text" class="form-control" id="exampleInputEmail1" name="nama" value="<?php echo $data->nama_perumahan; ?>" placeholder="Ketikan nama perumahan">
                                    </div>                                    
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Lokasi</label>
                                      <input type="text" class="form-control" id="exampleInputEmail1" name="lokasi" value="<?php echo $data->lokasi; ?>" placeholder="Ketikan lokasi">
                                    </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-flat btn-info">Simpan Perubahan Data</button>
                              </div>
                            </div>
                            <!-- /.modal-content -->
                            </form>
                          </div>
                          <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->


                        <div class="modal fade" id="hapusrumah<?php echo $data->id_rumah; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                          <form action="<?php echo base_url(); ?>rumah/delete" method="post">
                            <div class="modal-header" style="background-color: #dc3545; color: white;">
                              <h4 class="modal-title">Hapus Perumahan</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                            <input type="hidden" name="id" value="<?php echo $data->id_rumah; ?>"/>
                              Apakah anda ingin menghapus data perumahan berikut ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-flat btn-danger">Hapus Data Perumahan</button>
                            </div>
                          </div>
                          <!-- /.modal-content -->
                          </form>
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->



                  <?php } ?>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>

          </section>
          <!-- /.Left col -->
          
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <div class="modal fade" id="modal-lg">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>rumah/create" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Perumahan</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Nama Perumahan</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="nama" placeholder="Ketikan nama perumahan">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Lokasi</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="lokasi" placeholder="Ketikan lokasi">
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
        text: "Data perumahan berhasil ditambahkan",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data perumahan gagal ditambahkan !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

<?php if($this->session->flashdata('message2') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data perumahan berhasil diubah",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message2') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data perumahan gagal diubah !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

<?php if($this->session->flashdata('message3') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data perumahan berhasil dihapus",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message3') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data perumahan gagal dihapus !",
        icon: "error",
        button: "OK",
    });
<?php } ?>
</script>