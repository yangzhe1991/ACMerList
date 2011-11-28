<html>
<head>
<meta charset='utf-8'>
<title>东北大学ACMer列表</title>
<script src="jquery.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".tc").each(function(){
		if(Number($(this).text())<800)
			$(this).css("color","gray");	
		else if(Number($(this).text())<1200)
			$(this).css("color","green");	
		else if(Number($(this).text())<1500)
			$(this).css("color","blue");	
		else if(Number($(this).text())<2200)
			$(this).css("color","yellow");	
		else 
			$(this).css("color","red");	

	});
	$(".cf").each(function(){
		if(Number($(this).text())<1200)
			$(this).css("color","gray");	
		else if(Number($(this).text())<1500)
			$(this).css("color","green");	
		else if(Number($(this).text())<1650)
			$(this).css("color","blue");	
		else if(Number($(this).text())<1800)
			$(this).css("color","#a0a");	
		else if(Number($(this).text())<2000)
			$(this).css("color","#FF8C00");	
		else 
			$(this).css("color","red");	

	});

	//for(var i=0;i<tc.length;i++)
	//{
	//	tc.css("color","red");
	//}
});


</script>
</head>
<body bgcolor=black>
<?php
$con = mysql_connect("localhost","","");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("acmleader", $con);
$r=mysql_query("select * from fresh order by grade");
if(mysql_num_rows($r)!=0)
{
	$row=mysql_fetch_array($r);
	$time=$row["time"];
	//echo $time;
}
else $time=0;
$now=date("Y-m-d H:i:s");
//echo $now-$time;
$f5=0;
//if($now-$time>3600)
if($f5)
{
	$r=mysql_query("select * from acmer order by id desc");
	for($i=0;$i<mysql_num_rows($r);$i++)
	{
		$row=mysql_fetch_array($r);
		$id=$row["id"];
		//echo $id;
		$pid=$row["pojid"];	
		$hid=$row["hdojid"];	
		$tid=$row["tcid"];	
		$cid=$row["cfid"];	
		if($pid)
		{
		$url ="http://poj.org/userstatus?user_id=".$pid; 
		$lines_array = file($url); 
		$lines_string = implode('', $lines_array); 
		eregi("(.*)", $lines_string, $head); 
		$s=$head[0]; 
		$a=strpos($s,"Solved:");
		$s=substr($s,$a);
		$a=strpos($s,$pid);
		$b=strpos($s,"</a>");
		$s=substr($s,$a+strlen($pid)+1,$b-$a-strlen($pid)-1);
		$poj=$s;	
		}
		else 
			$poj=0;

		if($hid)
		{
		$url ="http://acm.hdu.edu.cn/userstatus.php?user=".$hid; 
		$lines_array = file($url); 
		$lines_string = implode('', $lines_array); 
		eregi("(.*)", $lines_string, $head); 
		$s=$head[0];
		$a=strpos($s,"Problems Solved");
		$s=substr($s,$a);
		$s=substr($s,strpos($s,"center"));
		$s=substr($s,7,strpos($s,"</td>")-7);
		$hdoj=$s;
		}
		else
			$hdoj=0;

		if($tid)
		{
			$url ="http://community.topcoder.com/tc?module=SimpleSearch&ha=".$tid; 
			$lines_array = file($url); 
			$lines_string = implode('', $lines_array); 
			eregi("(.*)", $lines_string, $head); 
			$s=$head[0];
			$a=strpos($s,"Algorithm Rating:");
			$s=substr($s,$a);
			$s=substr($s,strpos($s,"right"));
			$s=substr($s,0,strpos($s,"</td>"));
			if(strpos($s,"not rated"))
				$tc=0;
			else
			{
				$s=substr($s,strpos($s,"class"));
				$a=strpos($s,">")+1;
				$s=substr($s,$a,strpos($s,"</span>")-$a);
				$tc=$s;
			}
		}
		else $tc=0;

		if($cid)
		{
			$url ="http://codeforces.com/profile/".$cid; 
			$lines_array = file($url); 
			$lines_string = implode('', $lines_array); 
			eregi("(.*)", $lines_string, $head); 
			$s=$head[0];
			if(!strpos($s,"Contest rating:"))
			{
				$cf=0;
			}
			else
			{
				$s=substr($s,strpos($s,"Contest rating:"));
				$s=substr($s,strpos($s,">"));
				$s=substr($s,1,strpos($s,"</span>")-1);
				$cf=$s;
			}
		}
		else $cf=0;
		echo $poj."\n".$hdoj."\n".$tc."\n".$cf."\n";
		mysql_query("update acmer set poj={$poj}, hdoj={$hdoj} ,tc={$tc}, cf={$cf} where id='{$id}'");
		$now=date("Y-m-d H:i:s");
		//echo $now;
		mysql_query("insert into fresh set time='{$now}'");

	}
}


echo"<center><h2 style=color:white>东北大学ACMer列表及刷题统计</h2><br><p style=color:white>随时整理随时更新</p></center><table width=600 align=center>
	<tr>
	<td width=15% style=\"color:white\">name</td>
	<td width=18% style=\"color:white\">grade</td>
	<td width=18%><a style=\"color:white\" href=http://poj.org>poj</a></td>
	<td width=19%><a style=\"color:white\" href=http://acm.hdu.edu.cn>hdoj</a></td>
	<td width=15%><a style=\"color:white\" href=http://www.topcoder.com>topcoder</a></td>
	<td width=15%><a style=\"color:white\" href=http://www.codeforces.com>codeforces</a></td>
	</tr>
	";
$r=mysql_query("select * from acmer order by grade,tc desc,poj desc");
for($i=0;$i<mysql_num_rows($r);$i++)
{
	$one=mysql_fetch_array($r);
	echo "<tr><td><a style=\"color:white\" href=http://poj.org/userstatus?user_id=".$one["pojid"].">".$one["name"]."</a></td>";
	echo "<td><a style=\"color:white\" href=http://poj.org/userstatus?user_id=".$one["pojid"].">".$one["grade"]."</a></td>";
	echo "<td><a style=\"color:white\" href=http://poj.org/userstatus?user_id=".$one["pojid"].">".$one["poj"]."</a></td>";
	echo "<td><a style=\"color:white\" href=http://acm.hdu.edu.cn/userstatus.php?user=".$one["hdojid"].">".$one["hdoj"]."</a></td>";
	echo "<td><a class=tc href=http://community.topcoder.com/tc?module=SimpleSearch&ha=".$one["tcid"].">".$one["tc"]."</a></td>";
	echo "<td><a class=cf href=http://codeforces.com/profile/".$one["cfid"].">".$one["cf"]."</a></td></tr>";
}
echo"</table>";
?>


Power By Philo Yang|yangzhe1991 @ NEU
</body>
</html>
