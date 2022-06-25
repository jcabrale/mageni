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
  script_oid("1.3.6.1.4.1.25623.1.1.4.2020.0159.1");
  script_cve_id("CVE-2019-15691","CVE-2019-15692","CVE-2019-15693");
  script_tag(name:"creation_date", value:"2021-04-19 00:00:00 +0000 (Mon, 19 Apr 2021)");
  script_version("2021-04-19T13:49:56+0000");
  script_tag(name:"last_modification", value:"2021-04-20 10:28:26 +0000 (Tue, 20 Apr 2021)");
  script_tag(name:"cvss_base", value:"6.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2021-04-19 13:37:27 +0200 (Mon, 19 Apr 2021)");

  script_name("SUSE Linux Enterprise Server: Security Advisory (SUSE-SU-2020:0159-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2021 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse_sles", "ssh/login/rpms", re:"ssh/login/release=(SLES12\.0SP3|SLES12\.0SP2)");

  script_xref(name:"URL", value:"https://lists.suse.com/pipermail/sle-security-updates/2020-January/006396.html");

  script_tag(name:"summary", value:"The remote host is missing an update for 'tigervnc'
  package(s) announced via the SUSE-SU-2020:0159-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Please see the references for more information on the vulnerabilities.");

  script_tag(name:"affected", value:"'tigervnc' package(s) on SUSE Linux Enterprise Server 12");

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

if(release == "SLES12.0SP3") {
  if(!isnull(res = isrpmvuln(pkg:"libXvnc1", rpm:"libXvnc1~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libXvnc1-debuginfo", rpm:"libXvnc1-debuginfo~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"tigervnc", rpm:"tigervnc~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"tigervnc-debuginfo", rpm:"tigervnc-debuginfo~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"tigervnc-debugsource", rpm:"tigervnc-debugsource~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-Xvnc", rpm:"xorg-x11-Xvnc~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-Xvnc-debuginfo", rpm:"xorg-x11-Xvnc-debuginfo~1.6.0~18.28.1", rls:"SLES12.0SP3"))){
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "SLES12.0SP2") {
  if(!isnull(res = isrpmvuln(pkg:"libXvnc1", rpm:"libXvnc1~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libXvnc1-debuginfo", rpm:"libXvnc1-debuginfo~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"tigervnc", rpm:"tigervnc~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"tigervnc-debuginfo", rpm:"tigervnc-debuginfo~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"tigervnc-debugsource", rpm:"tigervnc-debugsource~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-Xvnc", rpm:"xorg-x11-Xvnc~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xorg-x11-Xvnc-debuginfo", rpm:"xorg-x11-Xvnc-debuginfo~1.6.0~18.28.1", rls:"SLES12.0SP2"))){
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