###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2016_1016_1.nasl 12381 2018-11-16 11:16:30Z cfischer $
#
# SuSE Update for mercurial openSUSE-SU-2016:1016-1 (mercurial)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.851272");
  script_version("$Revision: 12381 $");
  script_tag(name:"last_modification", value:"$Date: 2018-11-16 12:16:30 +0100 (Fri, 16 Nov 2018) $");
  script_tag(name:"creation_date", value:"2016-04-13 05:17:37 +0200 (Wed, 13 Apr 2016)");
  script_cve_id("CVE-2016-3068", "CVE-2016-3069", "CVE-2016-3630");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("SuSE Update for mercurial openSUSE-SU-2016:1016-1 (mercurial)");
  script_tag(name:"summary", value:"The remote host is missing an update for the 'mercurial'
  package(s) announced via the referenced advisory.");
  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");
  script_tag(name:"insight", value:"mercurial was updated to fix three security issues.

  These security issues were fixed:

  - CVE-2016-3069: Arbitrary code execution when converting Git repos
  (bsc#973176).

  - CVE-2016-3068: Arbitrary code execution with Git subrepos (bsc#973177).

  - CVE-2016-3630: Remote code execution in binary delta decoding
  (bsc#973175).");
  script_tag(name:"affected", value:"mercurial on openSUSE 13.2");
  script_tag(name:"solution", value:"Please install the updated packages.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSE13\.2");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);
res = "";

if(release == "openSUSE13.2")
{

  if ((res = isrpmvuln(pkg:"mercurial", rpm:"mercurial~3.1.2~7.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"mercurial-debuginfo", rpm:"mercurial-debuginfo~3.1.2~7.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"mercurial-debugsource", rpm:"mercurial-debugsource~3.1.2~7.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"mercurial-lang", rpm:"mercurial-lang~3.1.2~7.1", rls:"openSUSE13.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99);
  exit(0);
}
