# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2413-1 (libarchive)
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
  script_oid("1.3.6.1.4.1.25623.1.0.71140");
  script_cve_id("CVE-2011-1777", "CVE-2011-1778");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2012-03-12 11:31:25 -0400 (Mon, 12 Mar 2012)");
  script_name("Debian Security Advisory DSA 2413-1 (libarchive)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2012 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB6");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202413-1");
  script_tag(name:"insight", value:"Two buffer overflows have been discovered in libarchive, a library
providing a flexible interface for reading and writing archives in
various formats. The possible buffer overflows while reading is9660
or tar streams allow remote attackers to execute arbitrary
code depending on the application that makes use of this functionality.

For the stable distribution (squeeze), this problem has been fixed in
version 2.8.4-1+squeeze1.

For the testing (wheezy) and unstable (sid) distributions,
this problem has been fixed in version 2.8.5-5.");

  script_tag(name:"solution", value:"We recommend that you upgrade your libarchive packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to libarchive
announced via advisory DSA 2413-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"bsdcpio", ver:"2.8.4-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"bsdtar", ver:"2.8.4-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libarchive-dev", ver:"2.8.4-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libarchive1", ver:"2.8.4-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}