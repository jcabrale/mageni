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
  script_oid("1.3.6.1.4.1.25623.1.1.4.2015.0613.1");
  script_cve_id("CVE-2014-3615","CVE-2014-9065","CVE-2014-9066");
  script_tag(name:"creation_date", value:"2021-04-19 00:00:00 +0000 (Mon, 19 Apr 2021)");
  script_version("2021-04-19T13:49:56+0000");
  script_tag(name:"last_modification", value:"2021-04-20 10:28:26 +0000 (Tue, 20 Apr 2021)");
  script_tag(name:"cvss_base", value:"4.7");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:M/Au:N/C:N/I:N/A:C");

  script_name("SUSE Linux Enterprise Server: Security Advisory (SUSE-SU-2015:0613-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2021 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse_sles", "ssh/login/rpms", re:"ssh/login/release=(SLES12\.0)");

  script_xref(name:"URL", value:"https://lists.suse.com/pipermail/sle-security-updates/2015-March/001317.html");

  script_tag(name:"summary", value:"The remote host is missing an update for 'Xen'
  package(s) announced via the SUSE-SU-2015:0613-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Please see the references for more information on the vulnerabilities.");

  script_tag(name:"affected", value:"'Xen' package(s) on SUSE Linux Enterprise Server 12 (x86_64)");

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

if(release == "SLES12.0") {
  if(!isnull(res = isrpmvuln(pkg:"xen", rpm:"xen~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-debugsource", rpm:"xen-debugsource~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-doc-html", rpm:"xen-doc-html~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-kmp-default", rpm:"xen-kmp-default~4.4.1_10_k3.12.36_38~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-kmp-default-debuginfo", rpm:"xen-kmp-default-debuginfo~4.4.1_10_k3.12.36_38~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-libs-32bit", rpm:"xen-libs-32bit~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-libs", rpm:"xen-libs~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-libs-debuginfo-32bit", rpm:"xen-libs-debuginfo-32bit~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-libs-debuginfo", rpm:"xen-libs-debuginfo~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-tools", rpm:"xen-tools~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-tools-debuginfo", rpm:"xen-tools-debuginfo~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-tools-domU", rpm:"xen-tools-domU~4.4.1_10~9.1", rls:"SLES12.0"))){
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"xen-tools-domU-debuginfo", rpm:"xen-tools-domU-debuginfo~4.4.1_10~9.1", rls:"SLES12.0"))){
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