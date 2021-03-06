# OpenVAS Vulnerability Test
# $Id: deb_2901.nasl 6609 2017-07-07 12:05:59Z cfischer $
# Auto-generated from advisory DSA 2901-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#


if(description)
{
    script_oid("1.3.6.1.4.1.25623.1.0.300012");
    script_version("$Revision: 6609 $");
    script_cve_id("CVE-2014-0165", "CVE-2014-0166");
    script_name("Debian Security Advisory DSA 2901-1 (wordpress - security update)");
    script_tag(name: "last_modification", value: "$Date: 2017-07-07 14:05:59 +0200 (Fri, 07 Jul 2017) $");
    script_tag(name: "creation_date", value: "2014-04-12 00:00:00 +0200 (Sat, 12 Apr 2014)");
    script_tag(name:"cvss_base", value:"6.4");
    script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:N");
    script_tag(name: "solution_type", value: "VendorFix");

    script_xref(name: "URL", value: "http://www.debian.org/security/2014/dsa-2901.html");


    script_category(ACT_GATHER_INFO);

    script_copyright("Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net");
    script_family("Debian Local Security Checks");
    script_dependencies("gather-package-list.nasl");
    script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
    script_tag(name: "affected",  value: "wordpress on Debian Linux");
    script_tag(name: "insight",   value: "WordPress is a full featured web blogging tool:

* Instant publishing (no rebuilding)
* Comment pingback support with spam protection
* Non-crufty URLs
* Themable
* Plugin support");
    script_tag(name: "solution",  value: "For the oldstable distribution (squeeze),
these problems have been fixed in version 3.6.1+dfsg-1~deb6u2.

For the stable distribution (wheezy), these problems have been fixed in
version 3.6.1+dfsg-1~deb7u2.

For the testing distribution (jessie), these problems have been fixed in
version 3.8.2+dfsg-1.

For the unstable distribution (sid), these problems have been fixed in
version 3.8.2+dfsg-1.

We recommend that you upgrade your wordpress packages.");
    script_tag(name: "summary",   value: "Several vulnerabilities were discovered
in Wordpress, a web blogging tool. The Common Vulnerabilities and Exposures project
identifies the following problems:

CVE-2014-0165
A user with a contributor role, using a specially crafted
request, can publish posts, which is reserved for users of the
next-higher role.

CVE-2014-0166
Jon Cave of the WordPress security team discovered that the
wp_validate_auth_cookie function in wp-includes/pluggable.php does
not properly determine the validity of authentication cookies,
allowing a remote attacker to obtain access via a forged cookie.");
    script_tag(name: "vuldetect", value: "This check tests the installed software version using the apt package manager.");
    script_tag(name:"qod_type", value:"package");
    exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"wordpress", ver:"3.6.1+dfsg-1~deb6u2", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"wordpress-l10n", ver:"3.6.1+dfsg-1~deb6u2", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"wordpress", ver:"3.6.1+dfsg-1~deb7u2", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"wordpress-l10n", ver:"3.6.1+dfsg-1~deb7u2", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
