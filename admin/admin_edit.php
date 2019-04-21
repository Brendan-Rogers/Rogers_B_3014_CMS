<?php
	
require_once('scripts/config.php');

if (isset($_GET['id'])) {
	$id = $_GET['id'];
} else {
	echo 'Dont mess with the URL!!';
}
$display = get_row($id);
$row = $display->fetch(PDO::FETCH_ASSOC);

if(isset($_FILES['image'])){

	$errors= array();
	$file_name = $_FILES['image']['name'];
	$file_size =$_FILES['image']['size'];
	$file_tmp = $_FILES['image']['tmp_name'];
	$file_type = $_FILES['image']['type'];
	$file_ext = strtolower(end(explode('.',$_FILES['image']['name'])));

	$id = $_GET['id'];
	$title = $_POST['title'];
	$txt = $_POST['txt'];
	$category = $_POST['category'];
	$price = $_POST['price'];

	// if they haven't uploaded a new image 
	if (empty($file_name)) {
		$old_pic = $row['gear_pics'];
		echo edit_item($id, $title, $old_pic, $txt, $category, $price);
	} else {
		// if they have uploaded an image
		$extensions= array("jpeg","jpg","png");

		if(in_array($file_ext,$extensions)=== false){
			$errors[]="extension not allowed, please choose a JPEG or PNG file.";
		}
		if($file_size > 2097152){
			$errors[]='File size must be less then 2 MB';
		}

		if(empty($errors)==true){
			$new_file_name = clean($title).'.'.$file_ext;
			move_uploaded_file($file_tmp,'../images/'.$new_file_name);

			echo edit_item($id, $title, $new_file_name, $txt, $category, $price);

		} else {
			print_r($errors);
		}
	}		
}

?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>SPORTCHECK | Edit Item</title>
	<link rel="stylesheet" href="../css/main.css">
</head>

<body>

<main>
	<div id="stuff">

		<div class="index">
			<?php echo $row['gear_title']; ?>

			<form action="#" method="post" enctype="multipart/form-data">
				
				<label for="">TITLE</label>
				<input type="text" name='title' value="<?php echo $row['gear_title']; ?>">
				<br>
				<label for="">DESCRIPTION</label>
				<input type="text" name='txt' value="<?php echo $row['gear_txt']; ?>">
				<br>
				<label for="">CATEGORY</label>
				<select name="category" id="category">
					<option value="Nike">Nike</option>
					<option value="adidas">Adidas</option>
					<option value="underArmour">underArmour</option>
					<option value="reebok">Reebok</option>
					<option value="Saucony">Saucony</option>
					<option value="Mizuno">Mizuno</option>
				</select>
				<br>
				<label for="">PRICE</label>
				<input type="text" name='price' value="<?php echo $row['gear_price']; ?>">
				<br>
				<label for="">NEW IMAGE</label>
				<input type="file" name="image" accept="image/*" />
				<br><br>
				<input id="submit" type="submit" value="Update Item">
				<br><br>

			</form>

		</div>

		<a href="admin_index.php">Return Home</a>
		<a href="scripts/caller.php?caller_id=logout">Sign Out</a>

	</div>

</main>

</body>

</html>






