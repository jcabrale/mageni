# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 2818-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2013 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.702818");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2013-1861", "CVE-2013-2162", "CVE-2013-3783", "CVE-2013-3793", "CVE-2013-3802", "CVE-2013-3804", "CVE-2013-3809", "CVE-2013-3812", "CVE-2013-3839", "CVE-2013-5807");
  script_name("Debian Security Advisory DSA 2818-1 (mysql-5.5 - several vulnerabilities)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2013-12-16 00:00:00 +0100 (Mon, 16 Dec 2013)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");

  script_xref(name:"URL", value:"http://www.debian.org/security/2013/dsa-2818.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2013 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"mysql-5.5 on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (wheezy), these problems have been fixed in
version 5.5.33+dfsg-0+wheezy1.

For the unstable distribution (sid), the Debian specific problems will
be fixed soon.

We recommend that you upgrade your mysql-5.5 packages.");
  script_tag(name:"summary", value:"Several issues have been discovered in the MySQL database server. The
vulnerabilities are addressed by upgrading MySQL to a new upstream
version, 5.5.33, which includes additional changes, such as performance
improvements, bug fixes, new features, and possibly incompatible
changes.

In addition this update fixes two issues affecting specifically the
mysql-5.5 Debian package:

A race condition in the post-installation script of the mysql-server-5.5
package creates the configuration file /etc/mysql/debian.cnf with
world-readable permissions before restricting the permissions, which
allows local users to read the file and obtain sensitive information
such as credentials for the debian-sys-maint to perform
administration tasks.
(CVE-2013-2162
)

Matthias Reichl reported that the mysql-5.5 package misses the patches
applied previous in Debian's mysql-5.1 to drop the database test and
the permissions that allow anonymous access, without a password, from
localhost to the test database and any databases starting with
test_
. This update reintroduces these patches for the mysql-5.5
package.

Existing databases and permissions are not touched. Please refer to the
NEWS file provided with this update for further information.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libmysqlclient-dev", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libmysqlclient18", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libmysqld-dev", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libmysqld-pic", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-client", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-client-5.5", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-common", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-server", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-server-5.5", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-server-core-5.5", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-source-5.5", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mysql-testsuite-5.5", ver:"5.5.33+dfsg-0+wheezy1", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}