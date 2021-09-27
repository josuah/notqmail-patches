#!/bin/sh -eu
branch=$1

master=$(git -C notqmail.git rev-parse master)
commit=$(git -C notqmail.git rev-parse "$branch")

for patch in patch/*.patch; do
	patch=$(basename "$patch" .patch)
	if tail -n 1 "log/$master-$patch.log" | grep -qx ok; then
		if ! tail -n 1 "log/$commit-$patch.log" | grep -qx ok; then
			echo "$branch broke $patch"
			brokemaster=$((brokemaster+1))
		fi
	fi
done

exit ${brokemaster:-0}
