# OpenVAS Vulnerability Test
# $Id: deb_1510_1.nasl 6616 2017-07-07 12:10:49Z cfischer $
# Description: Auto-generated from advisory DSA 1510-1 (gs-esp / gs-gpl)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# as published by the Free Software Foundation
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

include("revisions-lib.inc");
tag_insight = "Chris Evans discovered a buffer overflow in the color space handling
code of the Ghostscript PostScript/PDF interpreter, which might result
in the execution of arbitrary code if a user is tricked into processing
a malformed file.

For the stable distribution (etch), this problem has been fixed in version
8.54.dfsg.1-5etch1 of gs-gpl and 8.15.3.dfsg.1-1etch1 of gs-esp.

For the old stable distribution (sarge), this problem has been fixed in
version 8.01-6 of gs-gpl and 7.07.1-9sarge1 of gs-esp.

The unstable distribution (sid) will be fixed soon.

We recommend that you upgrade your gs-esp and gs-gpl packages.";
tag_summary = "The remote host is missing an update to gs-esp / gs-gpl
announced via advisory DSA 1510-1.";

tag_solution = "https://secure1.securityspace.com/smysecure/catid.html?in=DSA%201510-1";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.301256");
 script_version("$Revision: 6616 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-07 14:10:49 +0200 (Fri, 07 Jul 2017) $");
 script_tag(name:"creation_date", value:"2008-02-28 02:09:28 +0100 (Thu, 28 Feb 2008)");
 script_cve_id("CVE-2008-0411");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("Debian Security Advisory DSA 1510-1 (gs-esp / gs-gpl)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com");
 script_family("Debian Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"gs", ver:"8.01-6", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"gs-gpl", ver:"8.01-6", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"gs-esp", ver:"7.07.1-9sarge1", rls:"DEB3.1")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"gs", ver:"8.54.dfsg.1-5etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"gs-esp", ver:"8.15.3.dfsg.1-1etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"gs-gpl", ver:"8.54.dfsg.1-5etch1", rls:"DEB4.0")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}