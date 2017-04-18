#!/bin/csh -f

if ($#argv != 2 && $#argv != 3) then
	echo Usage: $0 'submit-dir asgn (e.g., cmps101-avg.f16 pa01)'
	echo '    asgn must be open for submit or readable by you.  Do ls -lt on it.'
	exit $#argv
	endif

# undocumented option people like instructor, TAs, can add student's cruzid

set cruzid = ()
if ($#argv == 3) set cruzid = ($3)
if ($#argv == 2) set cruzid = ($USER)

set submit_base = /afs/cats.ucsc.edu/class
set submit_dir = $submit_base/$1/$2/$cruzid
pushd $submit_dir
/bin/ls -lt
popd

exit 0

