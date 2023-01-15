<?php
include('../includes/connection.php');
			$zz = $_POST['id'];
			$name = $_POST['name'];
         
            $phone = $_POST['phone'];
		
	 			$query = 'UPDATE supplier e  set COMPANY_NAME="'.$name.'",  PHONE_NUMBER="'.$phone.'" WHERE
					SUPPLIER_ID ="'.$zz.'"'; 
					$result = mysqli_query($db, $query) or die(mysqli_error($db));

							
?>	
	<script type="text/javascript">
			alert("You've Update Supplier Successfully.");
			window.location = "supplier.php";
		</script>