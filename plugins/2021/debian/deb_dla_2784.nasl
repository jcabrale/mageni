# Copyright (C) 2021 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
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
  script_oid("1.3.6.1.4.1.25623.1.0.892784");
  script_version("2021-10-13T08:01:25+0000");
  script_cve_id("CVE-2020-21913");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"last_modification", value:"2021-10-13 11:12:06 +0000 (Wed, 13 Oct 2021)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2021-10-04 17:59:00 +0000 (Mon, 04 Oct 2021)");
  script_tag(name:"creation_date", value:"2021-10-13 01:00:10 +0000 (Wed, 13 Oct 2021)");
  script_name("Debian LTS: Security Advisory for icu (DLA-2784-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2021 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2021/10/msg00008.html");
  script_xref(name:"URL", value:"https://security-tracker.debian.org/tracker/DLA-2784-1");
  script_xref(name:"Advisory-ID", value:"DLA-2784-1");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'icu'
  package(s) announced via the DLA-2784-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"It was discovered that there was a potential use-after-free
vulnerability in icu, a library which provides Unicode and locale
functionality.");

  script_tag(name:"affected", value:"'icu' package(s) on Debian Linux.");

  script_tag(name:"solution", value:"For Debian 9 'Stretch', this problem has been fixed in version
57.1-6+deb9u5.

We recommend that you upgrade your icu packages.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if(!isnull(res = isdpkgvuln(pkg:"icu-devtools", ver:"57.1-6+deb9u5", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"icu-devtools-dbg", ver:"57.1-6+deb9u5", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"icu-doc", ver:"57.1-6+deb9u5", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"libicu-dev", ver:"57.1-6+deb9u5", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"libicu57", ver:"57.1-6+deb9u5", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"libicu57-dbg", ver:"57.1-6+deb9u5", rls:"DEB9"))) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}

exit(0);