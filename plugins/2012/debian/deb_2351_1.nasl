# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2351-1 (wireshark)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (C) 2012 E-Soft Inc.
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.70565");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_cve_id("CVE-2011-4102");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2012-02-13 11:49:18 -0500 (Mon, 13 Feb 2012)");
  script_name("Debian Security Advisory DSA 2351-1 (wireshark)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2012 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(5|6)");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202351-1");
  script_tag(name:"insight", value:"Huzaifa Sidhpurwala discovered a buffer overflow in Wireshark's ERF
dissector, which could lead to the execution of arbitrary code.

For the oldstable distribution (lenny), this problem has been fixed in
version wireshark 1.0.2-3+lenny16.

For the stable distribution (squeeze), this problem has been fixed in
version 1.2.11-6+squeeze5.

For the unstable distribution (sid), this problem has been fixed in
version 1.6.3-1.");

  script_tag(name:"solution", value:"We recommend that you upgrade your wireshark packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to wireshark
announced via advisory DSA 2351-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"tshark", ver:"1.0.2-3+lenny16", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"1.0.2-3+lenny16", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"1.0.2-3+lenny16", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"1.0.2-3+lenny16", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"tshark", ver:"1.2.11-6+squeeze5", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"1.2.11-6+squeeze5", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"1.2.11-6+squeeze5", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dbg", ver:"1.2.11-6+squeeze5", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"1.2.11-6+squeeze5", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}