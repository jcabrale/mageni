# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2219-1 (xmlsec1)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (C) 2011 E-Soft Inc.
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
  script_oid("1.3.6.1.4.1.25623.1.0.69563");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2011-05-12 19:21:50 +0200 (Thu, 12 May 2011)");
  script_tag(name:"cvss_base", value:"5.1");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:N/C:P/I:P/A:P");
  script_cve_id("CVE-2011-1425");
  script_name("Debian Security Advisory DSA 2219-1 (xmlsec1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2011 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(5|6|7)");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202219-1");
  script_tag(name:"insight", value:"Nicolas Gregoire discovered that the XML Security Library xmlsec allowed
remote attackers to create or overwrite arbitrary files through
specially crafted XML files using the libxslt output extension and a
ds:Transform element during signature verification.

For the oldstable distribution (lenny), this problem has been fixed in
version 1.2.9-5+lenny1.

For the stable distribution (squeeze), this problem has been fixed in
version 1.2.14-1+squeeze1.

For the testing distribution (wheezy) and unstable distribution (sid),
this problem has been fixed in version 1.2.14-1.1.");

  script_tag(name:"solution", value:"We recommend that you upgrade your xmlsec1 packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to xmlsec1
announced via advisory DSA 2219-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libxmlsec1", ver:"1.2.9-5+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-dev", ver:"1.2.9-5+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-gnutls", ver:"1.2.9-5+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-nss", ver:"1.2.9-5+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-openssl", ver:"1.2.9-5+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"xmlsec1", ver:"1.2.9-5+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1", ver:"1.2.14-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-dev", ver:"1.2.14-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-gnutls", ver:"1.2.14-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-nss", ver:"1.2.14-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-openssl", ver:"1.2.14-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"xmlsec1", ver:"1.2.14-1+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1", ver:"1.2.14-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-dev", ver:"1.2.14-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-gnutls", ver:"1.2.14-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-nss", ver:"1.2.14-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libxmlsec1-openssl", ver:"1.2.14-1.1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"xmlsec1", ver:"1.2.14-1.1", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}