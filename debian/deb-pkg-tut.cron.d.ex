#
# Regular cron jobs for the deb-pkg-tut package
#
0 4	* * *	root	[ -x /usr/bin/deb-pkg-tut_maintenance ] && /usr/bin/deb-pkg-tut_maintenance
