#!/bin/csh -f

if ($#argv != 1) then
echo This script takes one argument, a submit-look-alike directory.
echo 'USAGE:' 'cat infile | ' $0 directory
echo ' E.g.:' 'cat Admin/insert-grades.txt | ' $0 pa01May08
echo '  where infile has lines "cruzid grade" and GRADE = ___  occurs'
echo '  in directory/cruzid/asgn-grading-criterion.'
exit $#argv
endif

set dir = $1
set line = ( $< )
while ($#line == 2)
	set cruzid = $line[1]
	set grade = $line[2]
	pushd $dir/$cruzid
	set f = (`/bin/ls -1 *-grading-criterion`)
	if ($#f != 1) echo '*-grading-criterion' not found or not unique.
	if ($#f != 1) popd
	if ($#f != 1) continue

	set oldf = $f[1].old
	set newf = $f[1]
	/bin/mv $newf $oldf
	cat $oldf | sed -e 's/GRADE = ___/GRADE = '${grade}/ > $newf
	popd
	set line = ( $< )
	end

