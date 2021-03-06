# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3109-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2014 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
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
  script_oid("1.3.6.1.4.1.25623.1.0.703109");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2014-9323");
  script_name("Debian Security Advisory DSA 3109-1 (firebird2.5 - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2014-12-21 00:00:00 +0100 (Sun, 21 Dec 2014)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"http://www.debian.org/security/2014/dsa-3109.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"firebird2.5 on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (wheezy),
this problem has been fixed in version 2.5.2.26540.ds4-1~deb7u2.

For the upcoming stable distribution (jessie), this problem has been
fixed in version 2.5.3.26778.ds4-5.

For the unstable distribution (sid), this problem has been fixed in
version 2.5.3.26778.ds4-5.

We recommend that you upgrade your firebird2.5 packages.");
  script_tag(name:"summary", value:"Dmitry Kovalenko discovered that
the Firebird database server is prone to a denial of service vulnerability.
An unauthenticated remote attacker could send a malformed network packet to
a firebird server, which would cause the server to crash.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");
  script_tag(name:"qod_type", value:"package");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"firebird-dev", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-classic", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-classic-common", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-classic-dbg", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-common", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-common-doc", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-doc", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-examples", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-server-common", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-super", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-super-dbg", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"firebird2.5-superclassic", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfbclient2", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfbclient2-dbg", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libfbembed2.5", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libib-util", ver:"2.5.2.26540.ds4-1~deb7u2", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}