while true; do sleep 15 ; unison -auto -perms 0 -dontchmod -batch -force newer /docker /server-speicher ; done
