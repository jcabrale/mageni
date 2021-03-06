# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3650-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.703650");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2016-6313");
  script_name("Debian Security Advisory DSA 3650-1 (libgcrypt20 - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2016-08-17 00:00:00 +0200 (Wed, 17 Aug 2016)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2018-01-05 02:31:00 +0000 (Fri, 05 Jan 2018)");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2016/dsa-3650.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8");
  script_tag(name:"affected", value:"libgcrypt20 on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (jessie),
this problem has been fixed in version 1.6.3-2+deb8u2.

We recommend that you upgrade your libgcrypt20 packages.");
  script_tag(name:"summary", value:"Felix Doerre and Vladimir Klebanov from
the Karlsruhe Institute of Technology discovered a flaw in the mixing functions of
Libgcrypt's random number generator. An attacker who obtains 4640 bits from the RNG
can trivially predict the next 160 bits of output.

A first analysis on the impact of this bug for GnuPG shows that existing
RSA keys are not weakened. For DSA and Elgamal keys it is also unlikely
that the private key can be predicted from other public information.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libgcrypt11-dev", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgcrypt20:amd64", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgcrypt20:i386", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libgcrypt20-dbg:amd64", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgcrypt20-dbg:i386", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libgcrypt20-dev", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgcrypt20-doc", ver:"1.6.3-2+deb8u2", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}