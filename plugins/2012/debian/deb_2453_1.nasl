# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2453-1 (gajim)
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
  script_oid("1.3.6.1.4.1.25623.1.0.71257");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_cve_id("CVE-2012-2093", "CVE-2012-2086", "CVE-2012-2085", "CVE-2012-1987");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2012-04-30 07:57:35 -0400 (Mon, 30 Apr 2012)");
  script_name("Debian Security Advisory DSA 2453-1 (gajim)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2012 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(6|7)");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202453-1");
  script_tag(name:"insight", value:"Several vulnerabilities have been discovered in gajim, a feature-rich
jabber client.  The Common Vulnerabilities and Exposures project
identifies the following problems:

CVE-2012-1987

gajim is not properly sanitizing input before passing it to shell
commands.  An attacker can use this flaw to execute arbitrary code
on behalf of the victim if the user e.g. clicks on a specially crafted
URL in an instant message.

CVE-2012-2093

gajim is using predictable temporary files in an insecure manner when
converting instant messages containing LaTeX to images.  A local
attacker can use this flaw to conduct symlink attacks and overwrite
files the victim has write access to.

CVE-2012-2086

gajim is not properly sanitizing input when logging conversations
which results in the possibility to conduct SQL injection attacks.


For the stable distribution (squeeze), this problem has been fixed in
version 0.13.4-3+squeeze2.

For the testing distribution (wheezy), this problem has been fixed in
version 0.15-1.

For the unstable distribution (sid), this problem has been fixed in
version 0.15-1.");

  script_tag(name:"solution", value:"We recommend that you upgrade your gajim packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to gajim
announced via advisory DSA 2453-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"gajim", ver:"0.13.4-3+squeeze3", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"gajim", ver:"0.15-1", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}