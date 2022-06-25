# Copyright (C) 2016 Eero Volotinen
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
  script_oid("1.3.6.1.4.1.25623.1.0.120623");
  script_version("2021-10-12T14:01:30+0000");
  script_tag(name:"creation_date", value:"2016-01-20 07:22:42 +0200 (Wed, 20 Jan 2016)");
  script_tag(name:"last_modification", value:"2021-12-06 11:03:13 +0000 (Mon, 06 Dec 2021)");
  script_name("Amazon Linux: Security Advisory (ALAS-2016-633)");
  script_tag(name:"insight", value:"A denial of service flaw was found in the ldb_wildcard_compare() function of libldb. A remote attacker could send a specially crafted packet that, when processed by an application using libldb (for example the AD LDAP server in Samba), would cause that application to consume an excessive amount of memory and crash.A memory-read flaw was found in the way the libldb library processed LDB DN records with a null byte. An authenticated, remote attacker could use this flaw to read heap-memory pages from the server.");
  script_tag(name:"solution", value:"Run yum update libldb to update your system.");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"URL", value:"https://alas.aws.amazon.com/ALAS-2016-633.html");
  script_cve_id("CVE-2015-3223", "CVE-2015-5330");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"severity_vector", value:"CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2016-12-31 02:59:00 +0000 (Sat, 31 Dec 2016)");
  script_tag(name:"qod_type", value:"package");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/amazon_linux", "ssh/login/release");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"summary", value:"The remote host is missing an update announced via the referenced Security Advisory.");
  script_copyright("Copyright (C) 2016 Eero Volotinen");
  script_family("Amazon Linux Local Security Checks");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "AMAZON") {
  if(!isnull(res = isrpmvuln(pkg:"pyldb", rpm:"pyldb~1.1.20~1.7.amzn1", rls:"AMAZON"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"pyldb-devel", rpm:"pyldb-devel~1.1.20~1.7.amzn1", rls:"AMAZON"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libldb-devel", rpm:"libldb-devel~1.1.20~1.7.amzn1", rls:"AMAZON"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libldb-debuginfo", rpm:"libldb-debuginfo~1.1.20~1.7.amzn1", rls:"AMAZON"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"ldb-tools", rpm:"ldb-tools~1.1.20~1.7.amzn1", rls:"AMAZON"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libldb", rpm:"libldb~1.1.20~1.7.amzn1", rls:"AMAZON"))) {
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