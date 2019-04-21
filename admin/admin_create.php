<?php
	
require_once('scripts/config.php');

if(isset($_FILES['image'])){

	$errors= array();
	$file_name = $_FILES['image']['name'];
	$file_size =$_FILES['image']['size'];
	$file_tmp = $_FILES['image']['tmp_name'];
	$file_type = $_FILES['image']['type'];
	$file_ext = strtolower(end(explode('.',$_FILES['image']['name'])));

	$title = $_POST['title'];
	$txt = $_POST['txt'];
	$category = $_POST['category'];
	$price = $_POST['price'];

	// if they have uploaded an image
	$extensions= array("jpeg","jpg","png");

	if(in_array($file_ext,$extensions)=== false){
		$errors[]="extension not allowed, please choose a JPEG or PNG file.";
	}
	if($file_size > 2097152){
		$errors[]='File size must be less then 2 MB';
	}
	if (empty($file_name)) {
		$errors[] = 'New products must have an image';
	}

	if(empty($errors)==true){
		$new_file_name = clean($title).'.'.$file_ext;
		move_uploaded_file($file_tmp,'../images/'.$new_file_name);

		echo new_item($title, $new_file_name, $txt, $category, $price);
	} else {
		print_r($errors);
	}
}
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>SPORTCHECK | Create New Item</title>
	<link rel="stylesheet" href="../css/main.css">
</head>

<body>

<main>
	<div id="stuff">

		<div class="index">

			<form action="#" method="post" enctype="multipart/form-data">
				
				<label for="">TITLE</label>
				<input type="text" name='title' value="" required>
				<br>
				<label for="">DESCRIPTION</label>
				<input type="text" name='txt' value="" required>
				<br>
				<label for="">CATEGORY</label>
				<select name="category" id="category" required>
					<option value="Nike">Nike</option>
					<option value="adidas">Adidas</option>
					<option value="underArmour">underArmour</option>
					<option value="reebok">Reebok</option>
					<option value="Saucony">Saucony</option>
					<option value="Mizuno">Mizuno</option>
				</select>
				<br>
				<label for="">PRICE</label>
				<input type="text" name='price' value="" required>
				<br>
				<label for="">NEW IMAGE</label>
				<input type="file" name="image" accept="image/*" />
				<br><br>
				<input id="submit" type="submit" value="Create Item">
				<br><br>

			</form>

		</div>

		<a href="admin_index.php">Return Home</a>
		<a href="scripts/caller.php?caller_id=logout">Sign Out</a>

	</div>

</main>

</body>

</html>






