Param(
[string]$Environment = $( Read-Host "which Environment" )
 )

Function DROP(){    
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\DropTables.sql -v input=$DBNAME
    return $true;
}

Function CREATE(){    
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\1_Competency.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\2_Skill.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\3_Interviewer.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\4_Position.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\5_Interviewers_Skills.sql -v input=$DBNAME
    sqlcmd -S $SERVERNAME -U $USER -P $PASS -i $path\6_Interviewers_Positions.sql -v input=$DBNAME
    Invoke-Sqlcmd -ServerInstance $SERVERNAME -database $dbname -inputfile $path\7_View_Interviewers_Skills.sql -v input=$DBNAME
    
}

$path = 'C:\Users\victorino_cazares\source\SQL_Scripts\DTSOInterviewers'

IF($Environment -eq 'DEV'){
    $DBNAME = 'Dev_Interviewers'
    $SERVERNAME = 'EPMXGUAW0501\SQL2014'
    $USER = 'test1234'
    $PASS = 'test1234'
    IF(DROP){
        Create    
    }
}else{
    IF($Environment -eq 'UAT'){
        $DBNAME = 'Uat_Interviewers'
        $SERVERNAME = 'dtsointerviewers.ckncrsi2bxog.us-east-1.rds.amazonaws.com'
        $USER = 'UAT-Interviewer'
        $PASS = 'UAT-Interviewer'
            IF(DROPUAT){
                Create    
            }
        }else {Write-Host 'Valid values are DEV, UAT, PROD' -ForegroundColor Red; break;}
}