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
  script_oid("1.3.6.1.4.1.25623.1.1.4.2019.0356.1");
  script_cve_id("CVE-2018-16884");
  script_tag(name:"creation_date", value:"2021-04-19 00:00:00 +0000 (Mon, 19 Apr 2021)");
  script_version("2021-04-19T13:49:56+0000");
  script_tag(name:"last_modification", value:"2021-04-20 10:28:26 +0000 (Tue, 20 Apr 2021)");
  script_tag(name:"cvss_base", value:"6.7");
  script_tag(name:"cvss_base_vector", value:"AV:A/AC:L/Au:S/C:P/I:P/A:C");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:A/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2021-04-19 13:37:28 +0200 (Mon, 19 Apr 2021)");

  script_name("SUSE Linux Enterprise Server: Security Advisory (SUSE-SU-2019:0356-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2021 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse_sles", "ssh/login/rpms", re:"ssh/login/release=(SLES12\.0SP2|SLES12\.0SP1)");

  script_xref(name:"URL", value:"https://lists.suse.com/pipermail/sle-security-updates/2019-February/005115.html");

  script_tag(name:"summary", value:"The remote host is missing an update for 'the Linux Kernel (Live Patch 31 for SLE 12 SP1)'
  package(s) announced via the SUSE-SU-2019:0356-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Please see the references for more information on the vulnerabilities.");

  script_tag(name:"affected", value:"'the Linux Kernel (Live Patch 31 for SLE 12 SP1)' package(s) on SUSE Linux Enterprise Server 12");

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

if(release == "SLES12.0SP2") {
  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_121-92_95-default", rpm:"kgraft-patch-4_4_121-92_95-default~4~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_121-92_98-default", rpm:"kgraft-patch-4_4_121-92_98-default~3~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_114-92_64-default", rpm:"kgraft-patch-4_4_114-92_64-default~11~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_114-92_67-default", rpm:"kgraft-patch-4_4_114-92_67-default~11~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_120-92_70-default", rpm:"kgraft-patch-4_4_120-92_70-default~10~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_121-92_73-default", rpm:"kgraft-patch-4_4_121-92_73-default~9~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_121-92_80-default", rpm:"kgraft-patch-4_4_121-92_80-default~9~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_121-92_85-default", rpm:"kgraft-patch-4_4_121-92_85-default~6~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-4_4_121-92_92-default", rpm:"kgraft-patch-4_4_121-92_92-default~5~2.1", rls:"SLES12.0SP2"))){
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "SLES12.0SP1") {
  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_104-default", rpm:"kgraft-patch-3_12_74-60_64_104-default~5~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_104-xen", rpm:"kgraft-patch-3_12_74-60_64_104-xen~5~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_107-default", rpm:"kgraft-patch-3_12_74-60_64_107-default~5~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_107-xen", rpm:"kgraft-patch-3_12_74-60_64_107-xen~5~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_82-default", rpm:"kgraft-patch-3_12_74-60_64_82-default~11~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_82-xen", rpm:"kgraft-patch-3_12_74-60_64_82-xen~11~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_85-default", rpm:"kgraft-patch-3_12_74-60_64_85-default~11~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_85-xen", rpm:"kgraft-patch-3_12_74-60_64_85-xen~11~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_88-default", rpm:"kgraft-patch-3_12_74-60_64_88-default~9~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_88-xen", rpm:"kgraft-patch-3_12_74-60_64_88-xen~9~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_93-default", rpm:"kgraft-patch-3_12_74-60_64_93-default~8~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_93-xen", rpm:"kgraft-patch-3_12_74-60_64_93-xen~8~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_96-default", rpm:"kgraft-patch-3_12_74-60_64_96-default~8~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_96-xen", rpm:"kgraft-patch-3_12_74-60_64_96-xen~8~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_99-default", rpm:"kgraft-patch-3_12_74-60_64_99-default~7~2.1", rls:"SLES12.0SP1"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kgraft-patch-3_12_74-60_64_99-xen", rpm:"kgraft-patch-3_12_74-60_64_99-xen~7~2.1", rls:"SLES12.0SP1"))){
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