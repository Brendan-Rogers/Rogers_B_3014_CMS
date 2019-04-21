<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);
	
	require_once('scripts/config.php');

	if (isset($_GET['index'])) {
	    $filterMode = $_GET['index'];
	    $display = index_items($filterMode, 'filter');
	} else if (isset($_GET['search'])) {
	    $search = $_GET['search'];
	    $display = index_items($search, 'search');
	} else if (isset($_GET['category'])) {
		if ($_GET['category'] == 'all') {
			// trigger a clean index call
			$filterMode = $_GET['category'];
		    $display = index_items($filterMode, 'filter');
		} else {
			// do the category thing
			$category = $_GET['category'];
			$display = index_items($category, 'category');
		}
	} else {
	    $display = index_items('all', 'filter');
	}
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>SPORTCHECK | Admin Panel</title>
	<link rel="stylesheet" href="../css/main.css">
</head>

<body>

<main>
	<div id="stuff">
		<h2>
			<?php
			echo 'Welcome back '.ucwords($_SESSION['user_name']).'!';
			?>
		</h2>
		<a href="admin_create.php">CREATE a new item</a>
		<a href="admin_archive.php">VIEW archived items</a>
		<br><br>
		<a href="admin_createuser.php">Create User</a>
		<a href="admin_edituser.php">Edit User</a>
		<a href="scripts/caller.php?caller_id=logout">Sign Out</a>
		<br><br><br>

		<form action="" method="GET">
			<input name="search" type="text" placeholder="Type here">
			<input id="submit" type="submit" value="Search">
		</form>


		<form action="" method="GET">
			<select name="category" id="category" onchange="this.form.submit()">
				<option value="all">All</option>
				<option value="Nike">Nike</option>
				<option value="adidas">Adidas</option>
				<option value="underArmour">underArmour</option>
				<option value="reebok">Reebok</option>
				<option value="Saucony">Saucony</option>
				<option value="Mizuno">Mizuno</option>
			</select>
			<!-- <input id="submit" type="submit" value="Go"> -->

		</form>
		<br><br>

		<section id="items">

			<?php while ($row = $display->fetch(PDO::FETCH_ASSOC)): ?>
			<!-- Only display if they're not archived -->
			<?php if ($row['archived'] == 0): ?>
			
			<div class="index">
				<?php echo $row['gear_title']; ?>
				<img src="../images/<?php echo $row['gear_pics']; ?>" alt="<?php echo $row['gear_title']; ?>">
				<?php echo $row['gear_txt']; ?>
				<br><br>
				<?php echo $row['gear_category']; ?>
				<br>
				<?php echo $row['gear_price']; ?>
				<br><br>


				<form action="admin_index.php" method="post">
					<input type="submit" name="edit_<?php echo $row['id']; ?>" value="Edit">
					<input type="submit" name="delete_<?php echo $row['id']; ?>" value="Delete">
				</form>

			</div>

			<?php 

			$id = $row['id'];
			$edit_post = 'edit_'.$id;
			$delete_post = 'delete_'.$id;

			// they've clicked edit
			if (isset($_POST[$edit_post])) {
				$edit = 'admin_edit.php?id='.$id;
				redirect_to($edit);
			}
			// they've clicked delete
			if (isset($_POST[$delete_post])) {
				echo archive_item($id, 1);
			}

			endIf;
			endwhile;
			?>
			
		</section>
		

		<a href="admin_createuser.php">Create User</a>
		<a href="admin_edituser.php">Edit User</a>
		<a href="scripts/caller.php?caller_id=logout">Sign Out</a>
	</div>

</main>

</body>

</html>






