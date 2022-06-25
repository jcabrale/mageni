# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3727-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.703727");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2016-4330", "CVE-2016-4331", "CVE-2016-4332", "CVE-2016-4333");
  script_name("Debian Security Advisory DSA 3727-1 (hdf5 - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2016-12-02 17:27:07 +0530 (Fri, 02 Dec 2016)");
  script_tag(name:"cvss_base", value:"6.9");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:C/I:C/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2017-11-04 01:29:00 +0000 (Sat, 04 Nov 2017)");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2016/dsa-3727.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(8|9)");
  script_tag(name:"affected", value:"hdf5 on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (jessie),
these problems have been fixed in version 1.8.13+docs-15+deb8u1.

For the testing distribution (stretch) and unstable distribution
(sid), these problems have been fixed in version 1.10.0-patch1+docs-1.

We recommend that you upgrade your hdf5 packages.");
  script_tag(name:"summary", value:"Cisco Talos discovered that hdf5, a
file format and library for storing scientific data, contained several
vulnerabilities that could lead to arbitrary code execution when handling
untrusted data.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"hdf5-helpers", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"hdf5-tools", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-8:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-8:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-8-dbg:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-8-dbg:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-cpp-8:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-cpp-8:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-cpp-8-dbg:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-cpp-8-dbg:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-dev", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-doc", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpi-dev", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich-8:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich-8:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-mpich-8-dbg:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich-8-dbg:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-mpich-dev", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich2-dev", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-8:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-8:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-8-dbg:amd64", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-8-dbg:i386", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-openmpi-dev", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-serial-dev", ver:"1.8.13+docs-15+deb8u1", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"hdf5-helpers", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"hdf5-tools", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-10:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-10:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-10-dbg:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-10-dbg:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}


if((res = isdpkgvuln(pkg:"libhdf5-cpp-11:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-cpp-11:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-cpp-11-dbg:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-cpp-11-dbg:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-dev", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-doc", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpi-dev", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich-10:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich-10:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-mpich-10-dbg:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-mpich-10-dbg:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-mpich-dev", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-10:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-10:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-openmpi-10-dbg:amd64", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-openmpi-10-dbg:i386", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if((res = isdpkgvuln(pkg:"libhdf5-openmpi-dev", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdf5-serial-dev", ver:"1.10.0-patch1+docs-1", rls:"DEB9")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}