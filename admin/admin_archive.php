<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);
	
	require_once('scripts/config.php');

	$display = index_items('all', 'filter');
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>SPORTCHECK | Archived Items</title>
	<link rel="stylesheet" href="../css/main.css">
</head>

<body>

<main>
	<section id="items">
		<?php while ($row = $display->fetch(PDO::FETCH_ASSOC)): ?>
		<!-- Only display if they ARE archived -->
		<?php if ($row['archived'] == 1): ?>
		
		<div class="index">
			<?php echo $row['gear_title']; ?>
			<img src="../images/<?php echo $row['gear_pics']; ?>" alt="<?php echo $row['gear_title']; ?>">
			<?php echo $row['gear_txt']; ?>
			<br><br>
			<?php echo $row['gear_category']; ?>
			<br>
			<?php echo $row['gear_price']; ?>
			<br><br>

			<form action="" method="post">
				<input type="submit" name="restore_<?php echo $row['id']; ?>" value="Restore">
				<br><br>
				<input type="submit" name="delete_<?php echo $row['id']; ?>" value="Permenently Remove">
				<br><br>
			</form>

		</div>

		<?php 

		$id = $row['id'];
		$restore_post = 'restore_'.$id;
		$delete_post = 'delete_'.$id;

		// they've clicked restore
		if (isset($_POST[$restore_post])) {
			echo archive_item($id, 0);
		}
		// they've clicked delete
		if (isset($_POST[$delete_post])) {
			echo delete_item($id);
		}

		endIf;
		endwhile;
		?>

	</section>

<a href="admin_index.php">Return Home</a>
<br><br>
<a href="admin_createuser.php">Create User</a>
<a href="admin_edituser.php">Edit User</a>
<a href="scripts/caller.php?caller_id=logout">Sign Out</a>


</main>

</body>

</html>






