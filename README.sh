cat <<EOF
Notqmail patch checker
======================
For maintaining
[patch](https://github.com/notqmail/notqmail/wiki/Patches)
compatibility and still permit the source to evolve, this Makefile
builds notqmail for each combination of patch and branch below.

EOF

echo "<table>"

# table header

echo "	<tr>"
echo "		<th>patch</th>"
while read branch; do
	commit=$(git -C notqmail.git rev-parse $branch)
	echo "		<th><a href="$url/$commit">${branch#notqmail-}</a></th>"
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
		result=$(tail -n 1 log/$commit-$patch.log | grep -x ok || echo error)
		echo "		<td><a href="log/$commit-$patch.log">$result</a></td>"
	done <conf-branch
	echo "	</tr>"
done

echo "</table>"

cat <<EOF

Testing an individual branch/patch combo
----------------------------------------
```
make BRANCH=refactoring PATCH=big-todo
```

This will produce log result in `log/$commit-big-todo.log`.

Testing all patches
-------------------
```
make patches BRANCH=refactoring
```

For instance, after a commit, for checking if patches still
apply or if they need a rework.

Testing all branches
--------------------
```
make branches PATCH=big-todo
```

For instance, after changing a patch to check if it now works
better on notqmail.

Branches tested are listed in `conf-branch`.

Testing all patches and all branches
------------------------------------
```
make everything
```

Checking every merge request
----------------------------
```
make brokemaster BRANCH=refactoring
```

This can be used in a script that automatically runs on merge request.
This will return an error only if the current branch broke more patches
than what master did already.
EOF
