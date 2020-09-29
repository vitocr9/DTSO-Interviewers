Param(
[string]$Environment = $( Read-Host "which Environment" )
 )

Function Inserts(){
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\1_Skill_Inserts.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\2_Competency_Inserts.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\3_Interviewers_Inserts.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\4_Interviewers_Skills_Inserts.sql -v input=$DBNAME

}

$path = 'C:\Users\victorino_cazares\source\SQL_Scripts\DTSOInterviewers\INSERTS'


IF($Environment -eq 'DEV'){
    $DBNAME = 'Dev_Interviewers'
    $SERVERNAME = 'EPMXGUAW0501\SQL2014'
    $USER = 'test1234'
    $PASS = 'test1234'    
}else{
    IF($Environment -eq 'UAT'){
        $DBNAME = 'Uat_Interviewers'
        $SERVERNAME = 'dtsointerviewers.ckncrsi2bxog.us-east-1.rds.amazonaws.com'
        $USER = 'UAT-Interviewer'
        $PASS = 'UAT-Interviewer'    
    }else {Write-Host 'Valid values are DEV, UAT, PROD' -ForegroundColor Red; break;}
}





Inserts;