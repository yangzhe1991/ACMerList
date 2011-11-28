<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
if($_POST)
{
$con = mysql_connect("localhost","","");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("acmleader", $con);
$r=mysql_query("insert into acmer(name,grade,pojid,hdojid,tcid,cfid) values('{$_POST["name"]}','{$_POST["grade"]}','{$_POST["pojid"]}','{$_POST["hdojid"]}','{$_POST["tcid"]}','{$_POST["cfid"]}')");
echo "done";
}
else
{
	echo"<form method=post>
		姓名<input name='name'><br>	
		年级<input name='grade'><br>	
		POJ<input name='pojid'><br>	
		HDOJ<input name='hdojid'><br>	
		TC<input name='tcid'><br>	
		CF<input name='cfid'><br>	
		<input type=submit>

	";	
}
?>
