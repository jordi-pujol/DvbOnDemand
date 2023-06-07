#!/bin/sh

cd "$(dirname $0)"

buildstamp="debian/debhelper-build-stamp"
[ -e "${buildstamp}" ] || \
	touch -d '@0' "${buildstamp}"

changed=
if [ -n "${changed:="$(find . -type f -cnewer "${buildstamp}")"}" ]; then
	printf '%s\n' "Changed files:" ${changed} ""
	! debuild -tc || \
		: > "${buildstamp}"
else
	echo "Nothing to do" >&2
fi
