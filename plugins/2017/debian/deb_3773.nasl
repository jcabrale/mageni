# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3773-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2017 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.703773");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2016-7056", "CVE-2016-8610", "CVE-2017-3731");
  script_name("Debian Security Advisory DSA 3773-1 (openssl - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2017-01-27 00:00:00 +0100 (Fri, 27 Jan 2017)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2020-10-20 22:15:00 +0000 (Tue, 20 Oct 2020)");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2017/dsa-3773.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8");
  script_tag(name:"affected", value:"openssl on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (jessie),
these problems have been fixed in version 1.0.1t-1+deb8u6.

For the unstable distribution (sid), these problems have been fixed in
version 1.1.0d-1 of the openssl source package and in version 1.0.2k-1
of the openssl1.0 source package.

We recommend that you upgrade your openssl packages.");
  script_tag(name:"summary", value:"Several vulnerabilities were discovered
in OpenSSL:

CVE-2016-7056
A local timing attack was discovered against ECDSA P-256.

CVE-2016-8610
It was discovered that no limit was imposed on alert packets during
an SSL handshake.

CVE-2017-3731
Robert Swiecki discovered that the RC4-MD5 cipher when running on
32 bit systems could be forced into an out-of-bounds read, resulting
in denial of service.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libssl-dev:amd64", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libssl-dev:i386", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libssl-doc", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libssl1.0.0:amd64", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libssl1.0.0:i386", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libssl1.0.0-dbg:amd64", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libssl1.0.0-dbg:i386", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"openssl", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"openssl-dbgsym", ver:"1.0.1t-1+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}