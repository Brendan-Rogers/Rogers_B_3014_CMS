<?php 

ini_set('display_errors',1);
error_reporting(E_ALL);

include('admin/scripts/config.php');

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
	<title>SPORTCHECK | Shoes</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body>

<form action="index.php" method="GET">
	<input name="search" type="text" placeholder="Type here">
	<input id="submit" type="submit" value="Search">
</form>


<form action="index.php" method="GET">
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
			<img src="images/<?php echo $row['gear_pics']; ?>" alt="<?php echo $row['gear_title']; ?>">
			<?php echo $row['gear_txt']; ?>
			<br><br>
			<?php echo ucwords($row['gear_category']); ?>
			<br>
			<?php echo $row['gear_price']; ?>

		</div>

	<?php 
	endIf;
	endwhile; 
	?>


</section>

<a href="admin/admin_login.php"><i class="fas fa-lock"></i></a>


<script type="text/javascript">
  document.getElementById('category').value = "<?php echo $_GET['category'];?>";
</script>

</body>
</html>