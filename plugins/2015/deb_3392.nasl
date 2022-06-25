# OpenVAS Vulnerability Test
# $Id: deb_3392.nasl 14275 2019-03-18 14:39:45Z cfischer $
# Auto-generated from advisory DSA 3392-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.703392");
  script_version("$Revision: 14275 $");
  script_cve_id("CVE-2015-0852");
  script_name("Debian Security Advisory DSA 3392-1 (freeimage - security update)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-18 15:39:45 +0100 (Mon, 18 Mar 2019) $");
  script_tag(name:"creation_date", value:"2015-11-04 00:00:00 +0100 (Wed, 04 Nov 2015)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2015/dsa-3392.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(7|9|8)");
  script_tag(name:"affected", value:"freeimage on Debian Linux");
  script_tag(name:"solution", value:"For the oldstable distribution (wheezy),
this problem has been fixed in version 3.15.1-1.1.

For the stable distribution (jessie), this problem has been fixed in
version 3.15.4-4.2.

For the testing distribution (stretch) and unstable distribution
(sid), this problem has been fixed in version 3.15.4-6.

We recommend that you upgrade your freeimage packages.");
  script_tag(name:"summary", value:"Pengsu Cheng discovered that FreeImage,
a library for graphic image formats, contained multiple integer underflows that
could lead to a denial of service: remote attackers were able to trigger a crash by
supplying a specially crafted image.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libfreeimage-dev", ver:"3.15.1-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage3", ver:"3.15.1-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage3-dbg", ver:"3.15.1-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage-dev", ver:"3.15.4-6", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage3", ver:"3.15.4-6", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage3-dbg", ver:"3.15.4-6", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage-dev", ver:"3.15.4-4.2", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage3", ver:"3.15.4-4.2", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfreeimage3-dbg", ver:"3.15.4-4.2", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}