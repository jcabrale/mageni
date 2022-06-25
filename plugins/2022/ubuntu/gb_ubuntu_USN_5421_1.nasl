# Copyright (C) 2022 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.845371");
  script_version("2022-05-23T14:06:16+0000");
  script_cve_id("CVE-2020-35522", "CVE-2022-0561", "CVE-2022-0562", "CVE-2022-0891", "CVE-2022-0865");
  script_tag(name:"cvss_base", value:"5.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:N/A:P");
  script_tag(name:"last_modification", value:"2022-05-23 14:06:16 +0000 (Mon, 23 May 2022)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2022-03-15 18:46:00 +0000 (Tue, 15 Mar 2022)");
  script_tag(name:"creation_date", value:"2022-05-17 01:00:28 +0000 (Tue, 17 May 2022)");
  script_name("Ubuntu: Security Advisory for tiff (USN-5421-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Ubuntu Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/ubuntu_linux", "ssh/login/packages", re:"ssh/login/release=(UBUNTU21\.10|UBUNTU18\.04 LTS|UBUNTU20\.04 LTS)");

  script_xref(name:"Advisory-ID", value:"USN-5421-1");
  script_xref(name:"URL", value:"https://lists.ubuntu.com/archives/ubuntu-security-announce/2022-May/006562.html");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'tiff'
  package(s) announced via the USN-5421-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"It was discovered that LibTIFF incorrectly handled certain images.
An attacker could possibly use this issue to cause a crash,
resulting in a denial of service. This issue only affects
Ubuntu 14.04 ESM, Ubuntu 16.04 ESM, Ubuntu 18.04 LTS and
Ubuntu 20.04 LTS. (CVE-2020-35522)

Chintan Shah discovered that LibTIFF incorrectly handled memory when
handling certain images. An attacker could possibly use this issue to
cause a crash, resulting in a denial of service, or possibly execute
arbitrary code. (CVE-2022-0561, CVE-2022-0562, CVE-2022-0891)

It was discovered that LibTIFF incorrectly handled certain images.
An attacker could possibly use this issue to cause a crash,
resulting in a denial of service. This issue only affects
Ubuntu 18.04 LTS, Ubuntu 20.04 LTS and Ubuntu 21.10. (CVE-2022-0865)");

  script_tag(name:"affected", value:"'tiff' package(s) on Ubuntu 21.10, Ubuntu 20.04 LTS, Ubuntu 18.04 LTS.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

release = dpkg_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "UBUNTU21.10") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.3.0-1ubuntu0.1", rls:"UBUNTU21.10"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.3.0-1ubuntu0.1", rls:"UBUNTU21.10"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU18.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.0.9-5ubuntu0.5", rls:"UBUNTU18.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.0.9-5ubuntu0.5", rls:"UBUNTU18.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "UBUNTU20.04 LTS") {

  if(!isnull(res = isdpkgvuln(pkg:"libtiff-tools", ver:"4.1.0+git191117-2ubuntu0.20.04.3", rls:"UBUNTU20.04 LTS"))) {
    report += res;
  }

  if(!isnull(res = isdpkgvuln(pkg:"libtiff5", ver:"4.1.0+git191117-2ubuntu0.20.04.3", rls:"UBUNTU20.04 LTS"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

exit(0);