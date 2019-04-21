<?php
	
	if (isset($_GET['caller_id'])) {
		if ($_GET['caller_id'] == 'logout') {
			session_destroy();
			header("Location: ../admin_login.php");
		}		
	}

	function redirect_to($location) {
		if($location != NULL) {
			header("Location: {$location}");
			exit;
		}
	}

?>