

function ps_kill_9()
{
	word=$1

	ps aux | grep $word | grep -v "grep" |  awk '{print $0;system("kill -9 "$2)}';
    check_proc_exist $word
	return 0;
}

function check_proc_exist() {
	word=$1
	row=`ps aux | grep $word | grep -v "grep" | wc -l`;
    ehco "check_proc_exist: ",$word;
    if [ $row = "0" ];then
        echo "\tNo\n"
    else
        echo "\tYes\n"
    fi
	return $row

}