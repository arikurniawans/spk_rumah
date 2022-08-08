<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Perangkingan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>dashboard">Dashboard</a></li>
              <li class="breadcrumb-item active">Perangkingan</li>
            </ol>
            
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
       
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        
          <!-- Left col -->
          <section class="col-lg-12">
          
          <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Data Alternatif</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th style="text-align: center;">#</th>
                    <th>ALTERNATIF</th>
                    <th style="text-align: center;">C1</th>
                    <th style="text-align: center;">C2</th>
                    <th style="text-align: center;">C3</th>
                    <th style="text-align: center;">C4</th>
                    <th style="text-align: center;">C5</th>
                    <th style="text-align: center;">C6</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($alternatif as $data){ ?>
                  <tr>
                      <td align="center"><?php echo $no++; ?></td>
                      <td><?php echo $data->nama; ?></td>
                      <td><?php echo $data->C1; ?></td>
                      <td><?php echo $data->C2; ?></td>
                      <td><?php echo $data->C3; ?></td>
                      <td><?php echo $data->C4; ?></td>
                      <td><?php echo $data->C5; ?></td>
                      <td><?php echo $data->C6; ?></td>
                  </tr>
                  <?php } ?>
                </table>
              </div>
              <!-- /.card-body -->
            </div>

          <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Data Rating Kecocokan (Matrik Awal)</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th style="text-align: center;">#</th>
                    <th>ALTERNATIF</th>
                    <th style="text-align: center;">C1</th>
                    <th style="text-align: center;">C2</th>
                    <th style="text-align: center;">C3</th>
                    <th style="text-align: center;">C4</th>
                    <th style="text-align: center;">C5</th>
                    <th style="text-align: center;">C6</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($ranking as $data){ ?>
                  <tr>
                      <td align="center"><?php echo $no++; ?></td>
                      <td><?php echo $data->nama; ?></td>
                      <td align="center"><?php echo $data->NC1; ?></td>
                      <td align="center"><?php echo $data->NC2; ?></td>
                      <td align="center"><?php echo $data->NC3; ?></td>
                      <td align="center"><?php echo $data->NC4; ?></td>
                      <td align="center"><?php echo $data->NC5; ?></td>
                      <td align="center"><?php echo $data->NC6; ?></td>
                  </tr>
                  <?php } ?>
                </table>
              </div>
              <!-- /.card-body -->
            </div>

          <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Data Matrik Normalisasi</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th style="text-align: center;">#</th>
                    <th>ALTERNATIF</th>
                    <th style="text-align: center;">C1</th>
                    <th style="text-align: center;">C2</th>
                    <th style="text-align: center;">C3</th>
                    <th style="text-align: center;">C4</th>
                    <th style="text-align: center;">C5</th>
                    <th style="text-align: center;">C6</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($ranking as $data){ ?>
                  <tr>
                      <td align="center"><?php echo $no++; ?></td>
                      <td><?php echo $data->nama; ?></td>
                      <td align="center"><?php echo $data->NC1 / $maxc1[0]->max_c1; ?></td>
                      <td align="center"><?php echo $data->NC2 / $maxc2[0]->max_c2; ?></td>
                      <td align="center"><?php echo $data->NC3 / $maxc3[0]->max_c3; ?></td>
                      <td align="center"><?php echo $data->NC4 / $maxc4[0]->max_c4; ?></td>
                      <td align="center"><?php echo $data->NC5 / $maxc5[0]->max_c5; ?></td>
                      <td align="center"><?php echo $data->NC6 / $maxc6[0]->max_c6; ?></td>
                  </tr>
                  <?php } ?>
                </table>
                </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          </div>

          </section>
          <!-- /.Left col -->

          <div class="container-fluid">
          <div class="row">
          <section class="col-lg-6">
          <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Data Perangkingan Metode SAW <i>(Simple Additive Weighting)</i></h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table id="tabelrank" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th style="text-align: center;">#</th>
                    <th>ALTERNATIF</th>
                    <th style="text-align: center;">HASIL SAW</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $arrayBaru = []; $no=1; foreach($ranking as $data){
                        $hasilSAW = ($data->NC1 / $maxc1[0]->max_c1 * 15) + 
                                        ($data->NC2 / $maxc2[0]->max_c2 * 25) +  
                                        ($data->NC3 / $maxc3[0]->max_c3 * 15) +  
                                        ($data->NC4 / $maxc4[0]->max_c4 * 20) +  
                                        ($data->NC5 / $maxc5[0]->max_c5 * 15) +  
                                        ($data->NC6 / $maxc6[0]->max_c6 * 10);

                        array_push($arrayBaru, $hasilSAW);
                  ?>
                  <tr>
                      <td align="center"><?php echo $no++; ?></td>
                      <td><?php echo $data->nama; ?></td>
                      <td align="center"><?php echo $hasilSAW; ?></td>
                  </tr>
                  <?php } ?>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
          </section>

          <section class="col-lg-6">
          <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Kesimpulan</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                    <?php if(!empty($arrayBaru)){ ?>
                    <font align="justify">Sistem rekomendasi personel menggunakan metode SAW <i>(Simple Additive Weighting)</i>
                    merekomendasikan personel atas nama <b><font id="namapersonel"></font></b>
                    dengan hasil perangkingan <b><?php echo max($arrayBaru); ?></b></font>
                    <?php }else{ echo "Belum ada data perangkingan !"; } ?>
              </div>
              <!-- /.card-body -->
            </div>
                    
          </section>
          </div>
          </div>
          
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <script>
          var tabel = document.getElementById('tabelrank');
          var maxVal;
          var namaPersonel;
          for(var i=1; i < tabel.rows.length; i++){
            if(i == 1){
              maxVal = tabel.rows[i].cells[2].innerHTML;
              namaPersonel = tabel.rows[i].cells[1].innerHTML;
            }else if(maxVal < tabel.rows[i].cells[2].innerHTML){
              maxVal = tabel.rows[i].cells[2].innerHTML;
              namaPersonel = tabel.rows[i].cells[1].innerHTML;
            }
          }
          document.getElementById('namapersonel').innerHTML = namaPersonel;
  </script>

  
