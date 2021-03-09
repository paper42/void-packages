# This hook changes permissions of all manpages to 644

hook() {
	local mandir=${PKGDESTDIR}/usr/share/man
    if [ -d "$mandir" ]; then
        find "$mandir" -type f -exec chmod 644 {} + >/dev/null 2>&1
    fi
}
