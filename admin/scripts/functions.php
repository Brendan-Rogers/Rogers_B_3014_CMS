<?php

	function index_items($index, $mode) {
		include('connect.php');

		if ($mode == "filter") {
			if ($index == 'all') {
				$get_items_query = "SELECT * FROM tbl_sports";
				$get_items_set = $pdo->query($get_items_query);
			} else if ($index == 'featured') {
				$get_items_query = "SELECT * FROM tbl_sports WHERE featured = 1";
				$get_items_set = $pdo->query($get_items_query);
			}
		} else if ($mode == 'search') {
			$search = "%{$index}%";
			$get_items_query = "SELECT * FROM tbl_sports WHERE gear_title LIKE :search";
			$get_items_set = $pdo->prepare($get_items_query);
			$get_items_set->execute(
				array(':search' => $search)
			);
		} else if ($mode == 'category') {
			$thing = 'adidas';
			$get_items_query = "SELECT * FROM tbl_sports WHERE gear_category = '{$index}'";
			$get_items_set = $pdo->query($get_items_query);
		}
		if ($get_items_set) {
			return $get_items_set;
		} else {
			return 'Sorry, none of our current products matched your query.';
		}
	}
	
	function edit_item($id, $title, $pic, $txt, $category, $price) {
		include('connect.php');

		$edit_item_query = "UPDATE tbl_sports SET gear_title = :title, gear_pics = :pic, gear_txt = :txt, gear_category = :category, gear_price = :price WHERE id = :id";
		$edit_item_set = $pdo->prepare($edit_item_query);
		$edit_item_set->execute(
			array(
				':title' => $title,
				':pic' => $pic,
				':txt' => $txt,
				':category' => $category,
				':price' => $price,
				':id' => $id
			)
		);

		return 'Item has been updated';
	}

	function archive_item($id, $mode) {
		include('connect.php');
		$archive_item_query = 'UPDATE tbl_sports SET archived = '.$mode.' WHERE id = '.$id;
		$archive_item_set = $pdo->query($archive_item_query);

		$message = ($mode == 0 ? 'Item has been restored' : 'Item has been archived');
		return $message;
	}

	function delete_item($id) {
		include('connect.php');
		$delete_item_query = 'DELETE FROM tbl_sports WHERE id = '.$id;
		$delete_item_set = $pdo->query($delete_item_query);

		return 'The item has been permenently deleted';
	}

	function new_item($title, $pic, $txt, $category, $price) {
		include('connect.php');
		$new_item_query = "INSERT INTO tbl_sports (gear_title, gear_pics, gear_txt, gear_category, gear_price) VALUES (:title, :pic, :txt, :category, :price)";
		$new_item_set = $pdo->prepare($new_item_query);
		$new_item_set->execute(
			array(
				':title' => $title,
				':pic' => $pic,
				':txt' => $txt,
				':category' => $category,
				':price' => $price,
			)
		);
		return 'New Item has been created';
	}


	function get_row($id) {
		include('connect.php');
		$row_query = "SELECT * FROM tbl_sports WHERE id = {$id}";
		$row_set = $pdo->query($row_query);
		if ($row_set) {
			return $row_set;
		} else {
			return 'That item does not exist';
		}
	}

	function clean($string) {
		$string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.
		return preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.
	}
?>