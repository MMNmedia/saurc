$host_name = 'db000.hosting-data.io';
$database = 'db000';
$user_name = 'dbo000';
$password = '000';
$conn = mysqli_connect($host_name, $user_name, $password, $database);
$sql = 'DELETE FROM `FVftmwwwposts` WHERE `ID` IN (SELECT `post_id` FROM `FVftmwwwem_events` WHERE `event_end_date` < NOW("Y-m-d"))';
$result = mysqli_query($conn, $sql);
$sql = 'DELETE FROM `FVftmwwwem_events` WHERE `event_end_date` < NOW("Y-m-d")';
$result = mysqli_query($conn, $sql);