# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2372-1 (heimdal)
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
  script_oid("1.3.6.1.4.1.25623.1.0.70690");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_cve_id("CVE-2011-4862");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2012-02-11 03:19:22 -0500 (Sat, 11 Feb 2012)");
  script_name("Debian Security Advisory DSA 2372-1 (heimdal)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2012 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(5|6)");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202372-1");
  script_tag(name:"insight", value:"It was discovered that the Kerberos support for telnetd contains a
pre-authentication buffer overflow, which may enable remote attackers
who can connect to the Telnet to execute arbitrary code with root
privileges.

For the oldstable distribution (lenny), this problem has been fixed in
version 1.2.dfsg.1-2.1+lenny1.

For the stable distribution (squeeze), this problem has been fixed in
version 1.4.0~git20100726.dfsg.1-2+squeeze1.

For the testing distribution (wheezy) and the unstable distribution
(sid), this problem will be fixed soon.");

  script_tag(name:"solution", value:"We recommend that you upgrade your heimdal packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to heimdal
announced via advisory DSA 2372-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"heimdal-clients", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-clients-x", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-dev", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-docs", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-kcm", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-kdc", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-servers", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-servers-x", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libasn1-8-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgssapi2-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdb9-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libheimntlm0-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhx509-3-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkadm5clnt7-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkadm5srv8-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkafs0-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkdc2-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkrb5-25-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libotp0-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libroken18-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libsl0-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwind0-heimdal", ver:"1.2.dfsg.1-2.1+lenny1", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-clients", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-clients-x", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-dbg", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-dev", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-docs", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-kcm", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-kdc", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-multidev", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-servers", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"heimdal-servers-x", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libasn1-8-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libgssapi2-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhdb9-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libheimntlm0-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libhx509-5-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkadm5clnt7-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkadm5srv8-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkafs0-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkdc2-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libkrb5-26-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libotp0-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libroken18-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libsl0-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwind0-heimdal", ver:"1.4.0~git20100726.dfsg.1-2+squeeze1", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}