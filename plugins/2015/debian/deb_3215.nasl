# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3215-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.703215");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2014-2497", "CVE-2014-9709");
  script_name("Debian Security Advisory DSA 3215-1 (libgd2 - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2015-04-06 00:00:00 +0200 (Mon, 06 Apr 2015)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2015/dsa-3215.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"libgd2 on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (wheezy),
these problems have been fixed in version 2.0.36~rc1~dfsg-6.1+deb7u1.

For the upcoming stable distribution (jessie), these problems have been
fixed in version 2.1.0-5.

For the unstable distribution (sid), these problems have been fixed in
version 2.1.0-5.

We recommend that you upgrade your libgd2 packages.");
  script_tag(name:"summary", value:"Multiple vulnerabilities were
discovered in libgd2, a graphics library:

CVE-2014-2497
The gdImageCreateFromXpm() function would try to dereference a NULL
pointer when reading an XPM file with a special color table. This
could allow remote attackers to cause a denial of service (crash) via
crafted XPM files.

CVE-2014-9709
Importing an invalid GIF file using the gdImageCreateFromGif() function
would cause a read buffer overflow that could allow remote attackers to
cause a denial of service (crash) via crafted GIF files.");
  script_tag(name:"vuldetect", value:"This check tests the installed
software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libgd-tools", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-noxpm:amd64", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-noxpm:i386", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-noxpm-dev:amd64", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-noxpm-dev:i386", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-xpm:amd64", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-xpm:i386", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-xpm-dev:amd64", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgd2-xpm-dev:i386", ver:"2.0.36~rc1~dfsg-6.1+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}


if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}