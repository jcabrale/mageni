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
  script_oid("1.3.6.1.4.1.25623.1.1.10.2016.0426");
  script_cve_id("CVE-2016-9572", "CVE-2016-9573", "CVE-2016-9580", "CVE-2016-9581");
  script_tag(name:"creation_date", value:"2022-01-28 10:58:44 +0000 (Fri, 28 Jan 2022)");
  script_version("2022-01-28T10:58:44+0000");
  script_tag(name:"last_modification", value:"2022-01-28 10:58:44 +0000 (Fri, 28 Jan 2022)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2020-09-09 19:57:00 +0000 (Wed, 09 Sep 2020)");

  script_name("Mageia: Security Advisory (MGASA-2016-0426)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Mageia Linux Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mageia_linux", "ssh/login/release", re:"ssh/login/release=MAGEIA5");

  script_xref(name:"Advisory-ID", value:"MGASA-2016-0426");
  script_xref(name:"URL", value:"https://advisories.mageia.org/MGASA-2016-0426.html");
  script_xref(name:"URL", value:"https://bugs.mageia.org/show_bug.cgi?id=19921");
  script_xref(name:"URL", value:"https://lists.fedoraproject.org/archives/list/package-announce@lists.fedoraproject.org/thread/G3C7U32IFCUOTSYNRT6QD5AFHWZ2ELHE/");
  script_xref(name:"URL", value:"https://lists.fedoraproject.org/archives/list/package-announce@lists.fedoraproject.org/thread/FBFRC3OO5376WRT5PO5VE2JL6UB3NBO7/");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'openjpeg2' package(s) announced via the MGASA-2016-0426 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"A NULL pointer dereference flaw was found in the way openjpeg decoded
certain input images. Due to a logic error in the code responsible for
decoding the input image, an application using openjpeg to process image
data could crash when processing a crafted image (CVE-2016-9572).

A heap buffer overflow flaw was found in the way openjpeg decompressed
certain input images. Due to an insufficient check in the imagetopnm()
function, an application using openjpeg to process image data could
crash when processing a crafted image (CVE-2016-9573).

An integer overflow vulnerability was found in tiftoimage function
resulting into heap buffer overflow (CVE-2016-9580).

An infinite loop vulnerability in tiftoimage that results into heap
buffer overflow in convert_32s_C1P1 was found (CVE-2016-9581)");

  script_tag(name:"affected", value:"'openjpeg2' package(s) on Mageia 5.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "MAGEIA5") {

  if(!isnull(res = isrpmvuln(pkg:"lib64openjp2_7", rpm:"lib64openjp2_7~2.1.2~1.1.mga5", rls:"MAGEIA5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"lib64openjpeg2-devel", rpm:"lib64openjpeg2-devel~2.1.2~1.1.mga5", rls:"MAGEIA5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libopenjp2_7", rpm:"libopenjp2_7~2.1.2~1.1.mga5", rls:"MAGEIA5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libopenjpeg2-devel", rpm:"libopenjpeg2-devel~2.1.2~1.1.mga5", rls:"MAGEIA5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"openjpeg2", rpm:"openjpeg2~2.1.2~1.1.mga5", rls:"MAGEIA5"))) {
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