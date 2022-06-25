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
  script_oid("1.3.6.1.4.1.25623.1.0.892683");
  script_version("2021-06-10T03:00:14+0000");
  script_cve_id("CVE-2017-7483", "CVE-2021-33477");
  script_tag(name:"cvss_base", value:"6.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"2021-06-10 10:19:24 +0000 (Thu, 10 Jun 2021)");
  script_tag(name:"creation_date", value:"2021-06-10 03:00:14 +0000 (Thu, 10 Jun 2021)");
  script_name("Debian LTS: Security Advisory for rxvt (DLA-2683-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2021 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2021/06/msg00012.html");
  script_xref(name:"URL", value:"https://security-tracker.debian.org/tracker/DLA-2683-1");
  script_xref(name:"Advisory-ID", value:"DLA-2683-1");
  script_xref(name:"URL", value:"https://bugs.debian.org/861694");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'rxvt'
  package(s) announced via the DLA-2683-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"rxvt, VT102 terminal emulator for the X Window System, allowed
(potentially remote) code execution because of improper handling
of certain escape sequences (ESC G Q).");

  script_tag(name:"affected", value:"'rxvt' package(s) on Debian Linux.");

  script_tag(name:"solution", value:"For Debian 9 stretch, this problem has been fixed in version
1:2.7.10-7+deb9u2.

We recommend that you upgrade your rxvt packages.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if(!isnull(res = isdpkgvuln(pkg:"rxvt", ver:"1:2.7.10-7+deb9u2", rls:"DEB9"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"rxvt-ml", ver:"1:2.7.10-7+deb9u2", rls:"DEB9"))) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}

exit(0);