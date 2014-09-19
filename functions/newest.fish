function newest --description "return the newest file that matches the pattern by file modification date"
   stat --format="%Y %n" $argv |sort -nr | head -1
end