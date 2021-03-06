# Copyright (C) 2019 Greenbone Networks GmbH
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (C) the respective author(s)
#
# SPDX-License-Identifier: GPL-2.0-or-later
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.704498");
  script_version("2019-08-13T22:56:08+0000");
  script_cve_id("CVE-2019-14232", "CVE-2019-14233", "CVE-2019-14234", "CVE-2019-14235");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"last_modification", value:"2019-08-13 22:56:08 +0000 (Tue, 13 Aug 2019)");
  script_tag(name:"creation_date", value:"2019-08-13 02:00:11 +0000 (Tue, 13 Aug 2019)");
  script_name("Debian Security Advisory DSA 4498-1 (python-django - security update)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2019 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(10|9)");

  script_xref(name:"URL", value:"https://www.debian.org/security/2019/dsa-4498.html");
  script_xref(name:"URL", value:"https://security-tracker.debian.org/tracker/DSA-4498-1");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'python-django'
  package(s) announced via the DSA-4498-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Several vulnerabilities were discovered in python-django, a web
development framework. They could lead to remote denial-of-service or
SQL injection.");

  script_tag(name:"affected", value:"'python-django' package(s) on Debian Linux.");

  script_tag(name:"solution", value:"For the oldstable distribution (stretch), these problems have been fixed
in version 1:1.10.7-2+deb9u6.

For the stable distribution (buster), these problems have been fixed in
version 1:1.11.23-1~deb10u1.

We recommend that you upgrade your python-django packages.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if(!isnull(res = isdpkgvuln(pkg:"python-django", ver:"1:1.11.23-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python-django-common", ver:"1:1.11.23-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python-django-doc", ver:"1:1.11.23-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python3-django", ver:"1:1.11.23-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python-django", ver:"1:1.10.7-2+deb9u6", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python-django-common", ver:"1:1.10.7-2+deb9u6", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python-django-doc", ver:"1:1.10.7-2+deb9u6", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"python3-django", ver:"1:1.10.7-2+deb9u6", rls:"DEB9"))) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}

exit(0);