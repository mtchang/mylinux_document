<?php
//
// PHP pcntl_fock 練習
//

session_start();

/* our simple php ping function */
function ping($host)
{
	
	    echo " ping 目前在分析 $host 。\n";	
    
        exec(sprintf('ping -c 1 -W 5 %s', escapeshellarg($host)), $res, $rval);
        if($rval == 0) {
			$result['value'] 	= '0';
			$result['res']		= $res;
		}else{
			$result['value'] 	= '1';
			$result['res']		= $res;
		}
		
		echo " ping 分析完畢 $host \n";
        return $result;
}

function ping_port($host,$port=80,$timeout=6)
{
        $fsock = fsockopen($host, $port, $errno, $errstr, $timeout);
        if ( ! $fsock )
        {
                return FALSE;
        }
        else
        {
                return TRUE;
        }
}

function microtime_float()
{
    list($usec, $sec) = explode(" ", microtime());
    return ((float)$usec + (float)$sec);
}

$time_start = microtime_float();

$host['1'] 	= '140.117.11.1';
$host['2'] 	= '8.8.8.8';
$host['3'] 	= '140.117.69.1';
$host['4'] 	= '140.117.69.8';
$host['5'] 	= '140.117.69.12';
$host['6'] 	= 'www.yahoo.com';
$host['7'] 	= '140.117.69.4';
$host['8'] 	= '140.117.69.5';
$host['9'] 	= '140.117.69.6';
$host['10'] 	= '140.117.69.7';
$host['11'] 	= '140.117.69.8';


$process_num = 10;
print "主程序：我是主程序，我要打 {$process_num} 個「子程序」。\n";
$children = array();

for($i = 1;$i <= $process_num; $i++) {
    $pid = pcntl_fork();
    if($pid == -1) {
        exit(1);
    } else if ($pid) {
    /*這是主程序專區*/
    $children[] = $pid; //紀錄下每個子程序的編號
    print "主程序：產生第 {$i} 個子程序，pid是{$pid}\n";
   } else {
   /*這是子程序區*/
    break; //直接出迴圈
   }
}

if($pid) { /* 主程序會在這裡休息 */
    $status = null;
    foreach($children as $pid) { //要等每個子程序都離開才離開
        pcntl_waitpid($pid, $status); 
        print "主程序：pid是 {$pid} 的那個子程序，回去時他告訴我他的狀況是 {$status} \n";
    }
    print "主程序也要離開了"."\n";
} else {
    /*以下是子程序的工作區塊，會依序執行，但是不一定會依序回傳。*/
    print "我是第 {$i} 個子程序，我要檢查 {$host[$i]} 主機\n";
    $h = $host[$i];
    $a[$i] = ping($h);
    $_SESSION["$i"] = $h;
    echo "\n=================================================================\n";
    print "我是第 {$i} 個子程序，檢查 {$host[$i]} 主機，結果為 {$a[$i]['value']} \n";
    var_dump($a[$i]);
    echo "\n=================================================================\n";
    exit(0);
}

$time_end = microtime_float();
$time = $time_end - $time_start;

echo "\n總執行時間 $time 秒 \n";

echo "\nall result = \n";
var_dump($_SESSION);
// 變數值 null，因為子程序沒有將結果回傳到父程序。
exit();
?>
