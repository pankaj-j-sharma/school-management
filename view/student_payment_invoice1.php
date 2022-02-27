<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location:../index.php');
    exit;
}
?>
	<!--MSK-000136-->
	<div class="modal msk-fade" id="modalINV1" tabindex="-1" role="dialog" aria-labelledby="insert_alert1" aria-hidden="true" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog"><!--modal-dialog -->  
			<div class="container col-lg-12 "><!--modal-content --> 
      			<div class="row">
          			<div class="panel panel-info"><!--panel -->
                    	<div class="msk-heading">
                    	<button type="button" onClick="scrollDown()" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>	
                        <br>
                        </div>
            			<div class="panel-body"><!--panel-body -->
                        	<div class="row " id="msk12345">
                            	<div class="col-lg-2">
                                	<div class="div-logo">
                                    	<img class="logo" src="../uploads/incampustitle.jpg">
                                    </div>
                                </div>
                                <div class="col-lg-10 class-name">
                                	<h2>InCampus IT Solutions</h2>
                                	<div class="col-lg-5 class-address">
                                    	1103, Building No.4, <br>
										Sarvoday Leela,<br>
										90 Feet Road, Thakurli(E), <br>
										Mumbai - 421201 <br>
                                    </div>
									<div class="col-lg-5 class-email text-right " style="background-color:white;">
											<h5><small>Email: incampusit@gmail.com</br>Phone: +91-9967110803</small></h5>
									</div>									
                                </div>
                        	</div>
                            <div class="row ">
                                <div class="col-lg-5">
                                   <h4>INVOICE TO:</h4>
                                    <div class="student-address">
<?php
include_once("../controller/config.php");
$index=$_GET['index'];
$desc=$_GET['desc'];
$monthly_fee=$_GET['paid'];
$year=$_GET['year'];
$month=$_GET['month'];
$date=$_GET['date'];

$admission_fee=0;

$monthly_fee = number_format($monthly_fee, 2, '.', '');

$sql="select * from student where index_number='$index'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$name=$row['i_name'];

$sql1="select * from student_payment_history where index_number='$index' and year='$year' and month='$month' and date='$date'";
$result1=mysqli_query($conn,$sql1);
$row1=mysqli_fetch_assoc($result1);
$inv_number=$row1['invoice_number'];

$sql2="select grade.admission_fee as adm_fee
	   from student_grade 
	   inner join grade
	   on student_grade.grade_id=grade.id
	   inner join student_payment
	   on student_grade.index_number=student_payment.index_number
	   where student_grade.index_number='$index' and student_grade.year='$year' and student_payment.date='$date' and student_payment._status='Admission Fee'";
	   
$result2=mysqli_query($conn,$sql2);
if(mysqli_num_rows($result2) > 0){
	$row2=mysqli_fetch_assoc($result2);
	$admission_fee=$row2['adm_fee'];
}
$total=$admission_fee+$monthly_fee;
$total = number_format($total, 2, '.', '');

?>                                    
                                  <span class="std-name"><?php echo $name; ?></span><br>
                                    	1103, Building No.4, <br>
									    Mumbai - 421201 <br>
                                    </div>
                                </div>
                                <div class="col-xs-5 col-xs-offset-2 text-right msk-t">
                                	<br>
                                    
                                	<h3>INVOICE - #<?php echo $inv_number; ?></h3>
                                    <div class="text-right">
                                    	Year: <?php echo $year; ?><br>
                                        Month: <?php echo $month; ?><br>
                                    	Date: <?php echo $date; ?>
                                    </div>                                
                                </div>
      						</div> <!-- / end client details section -->
                             <table class="table table-bordered">
                                <thead>
                                    <th class="col-md-1">ID</th>
                                    <th class="col-md-1">Description</th>
                                    <th class="col-md-1">Amount($)</th>
                                    <th class="col-md-1">Month</th>
                                    <th class="col-md-1">Date</th>
                                </thead>
								<tbody>
                                	<tr id="tr_adm_fee">
                                    	<td>1</td>
                                       	<td>Admission Fee</td>
                                        <td>$<?php echo $admission_fee; ?></td>
                                        <td><?php echo $month; ?></td>
                                        <td><?php echo $date; ?></td>
                                    </tr>
                                    <tr>
                                    	<td id="td_monthly_fee_count"> 1</td>
                                       	<td id="td_monthly_fee_desc"><?php echo $desc; ?></td>
                                        <td>$<?php echo $monthly_fee; ?></td>
                                        <td><?php echo $month; ?></td>
                                        <td><?php echo $date; ?></td>
                                    </tr>
                 				</tbody>
                          	</table> 
                             <div class="row">
                                <div class="col-xs-1 text-right pdetail1">
                                      <strong>
                                        <span id="spanaFee"><?php echo $admission_fee; ?>$</span> 
                                        <span id="spanmFee"><?php echo $monthly_fee; ?>$</span> <br>
										<span id="spanTotal"><?php echo $total; ?>$</span> <br>
                                        <span id="spanPaid"><?php echo $total; ?>$</span> <br>
                                      </strong>
  								</div>
                                <div class="col-xs-3 text-right pdetail2">
    								<p>
                                      <strong>
                                        <span id="spanaFee1">Admission Fee :</span>
                                        Monthly Fee :<br>
										Total :<br>
                                        Paid :<br>
                                      </strong>
                                    </p>
  								</div>
							</div>
                            <div class="col-xs-6 col-xs-offset-2 text-right">
                            	<h1 id="h1">Thank You!</h1>
                            </div>
                  		</div><!--/.panel-body -->
                        <div class="panel-footer inv-footer text-right" id="msk123456">
                        	<button type="button" class="btn btn-success btn-md"  id="" onClick="window.print()">
                            	<span class="glyphicon glyphicon-print"></span> Print<!--MSK-000137--> 
                            </button>
             			</div>
                	</div><!--/. panel--> 
                </div><!--/.row --> 
            </div><!--/.modal-content -->
        </div><!--/.modal-dialog -->
    </div><!--/.modal -->