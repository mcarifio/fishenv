function mkcd --description "cd to a directory, making it first if needed"
   set target $argv[1]
   test -d $target ; or mkdir -pv $target
   cd $target
end