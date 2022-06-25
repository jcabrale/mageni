# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3573-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.703573");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2016-3710", "CVE-2016-3712");
  script_name("Debian Security Advisory DSA 3573-1 (qemu - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2016-05-09 00:00:00 +0200 (Mon, 09 May 2016)");
  script_tag(name:"cvss_base", value:"7.2");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2020-05-14 15:43:00 +0000 (Thu, 14 May 2020)");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2016/dsa-3573.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8");
  script_tag(name:"affected", value:"qemu on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (jessie),
these problems have been fixed in version 1:2.1+dfsg-12+deb8u6.

We recommend that you upgrade your qemu packages.");
  script_tag(name:"summary", value:"Several vulnerabilities were discovered
in qemu, a fast processor emulator.

CVE-2016-3710
Wei Xiao and Qinghao Tang of 360.cn Inc discovered an out-of-bounds
read and write flaw in the QEMU VGA module. A privileged guest user
could use this flaw to execute arbitrary code on the host with the
privileges of the hosting QEMU process.

CVE-2016-3712
Zuozhi Fzz of Alibaba Inc discovered potential integer overflow
or out-of-bounds read access issues in the QEMU VGA module. A
privileged guest user could use this flaw to mount a denial of
service (QEMU process crash).");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"qemu", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-guest-agent", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-kvm", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-arm", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-common", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-mips", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-misc", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-ppc", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-sparc", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-system-x86", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-user", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-user-binfmt", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-user-static", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"qemu-utils", ver:"1:2.1+dfsg-12+deb8u6", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}