
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sistem Rekomendasi Pemilihan Perumahan Bandar Lampung | Log in (v2)</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">

<!-- <img src="<?php echo base_url(); ?>assets/dist/img/loginrumah.png" width="10%"/><br/> -->

<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <!-- <a href="javascript:void(0);" class="h1"><b>Rekomendasi Pemilihan Perumahan</b></a> -->
      <img src="<?php echo base_url(); ?>assets/dist/img/loginrumah.png" width="50%"/>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Sistem Rekomendasi Pemilihan Perumahan Bandar Lampung</p>

      <form action="<?php echo base_url(); ?>Login/signin" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="username" placeholder="Username">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?php echo base_url(); ?>assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url(); ?>assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/dist/js/adminlte.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type='text/javascript'>
<?php if($this->session->flashdata('error1') == 'failpassword') { ?>
   swal({
        title: "Login Gagal",
        text: "Cek kembali password anda !",
        icon: "error",
        button: "OK",
    });
<?php }else if($this->session->flashdata('error2') == 'failaccount') { ?>
  swal({
        title: "Login Gagal",
        text: "Cek kembali username dan password anda !",
        icon: "error",
        button: "OK",
    });
<?php } ?>
</script>
</body>
</html>
