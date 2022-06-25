# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3648-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.703648");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2016-6504", "CVE-2016-6505", "CVE-2016-6506", "CVE-2016-6507",
                "CVE-2016-6508", "CVE-2016-6509", "CVE-2016-6510", "CVE-2016-6511");
  script_name("Debian Security Advisory DSA 3648-1 (wireshark - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2016-08-12 00:00:00 +0200 (Fri, 12 Aug 2016)");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2017-09-03 01:29:00 +0000 (Sun, 03 Sep 2017)");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2016/dsa-3648.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(9|8)");
  script_tag(name:"affected", value:"wireshark on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (jessie),
these problems have been fixed in version 1.12.1+g01b65bf-4+deb8u8.

For the testing distribution (stretch), these problems have been fixed
in version 2.0.5+ga3be9c6-1.

For the unstable distribution (sid), these problems have been fixed in
version 2.0.5+ga3be9c6-1.

We recommend that you upgrade your wireshark packages.");
  script_tag(name:"summary", value:"Multiple vulnerabilities were discovered
in the dissectors for NDS, PacketBB, WSP, MMSE, RLC, LDSS, RLC and OpenFlow, which
could result in denial of service or the execution of arbitrary code.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libwireshark-data", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-dev", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark6:amd64", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark6:i386", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap-dev", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap5:amd64", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap5:i386", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libwsutil-dev", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil6:amd64", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil6:i386", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"tshark", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-doc", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-gtk", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-qt", ver:"2.0.5+ga3be9c6-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-data", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-dev", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark5:amd64", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark5:i386", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libwiretap-dev", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap4:amd64", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap4:i386", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libwsutil-dev", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil4:amd64", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil4:i386", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"tshark", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dbg", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-doc", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-qt", ver:"1.12.1+g01b65bf-4+deb8u8", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}