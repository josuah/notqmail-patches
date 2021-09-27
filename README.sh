cat <<EOF
Notqmail patch checker
======================
For maintaining patch compatibility and still permit the source to evolve, this Makefile builds notqmail for each combination of patch and branch below.

EOF

echo "<table>"

# table header

echo "	<tr>"
echo "		<th>patch</th>"
while read branch; do
	commit=$(git -C notqmail.git rev-parse $branch)
	echo "		<th><a href="$url/$commit">$branch</a></th>"
done <conf-branch
echo "	</tr>"

# table rows

url=https://github.com/notqmail/notqmail/commits
for patch in patch/*; do
	patch=$(basename "$patch" .patch)
	echo "	<tr>"
	echo "		<td>$patch</td>"
	while read branch; do
		commit=$(git -C notqmail.git rev-parse $branch)
		result=$(tail -n 1 notqmail-$commit-$patch.log | grep -x success || echo failure)
		echo "		<td><a href="notqmail-$commit-$patch.log">$result</a></td>"
	done <conf-branch
	echo "	</tr>"
done

echo "</table>"
