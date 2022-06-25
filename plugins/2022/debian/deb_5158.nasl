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
  script_oid("1.3.6.1.4.1.25623.1.0.705158");
  script_version("2022-06-09T12:37:46+0000");
  script_cve_id("CVE-2022-1529", "CVE-2022-1802", "CVE-2022-1834", "CVE-2022-31736", "CVE-2022-31737", "CVE-2022-31738", "CVE-2022-31740", "CVE-2022-31741", "CVE-2022-31742", "CVE-2022-31747");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"last_modification", value:"2022-06-10 10:05:32 +0000 (Fri, 10 Jun 2022)");
  script_tag(name:"creation_date", value:"2022-06-09 01:00:11 +0000 (Thu, 09 Jun 2022)");
  script_name("Debian: Security Advisory for thunderbird (DSA-5158-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(10|11)");

  script_xref(name:"URL", value:"https://www.debian.org/security/2022/dsa-5158.html");
  script_xref(name:"URL", value:"https://security-tracker.debian.org/tracker/DSA-5158-1");
  script_xref(name:"Advisory-ID", value:"DSA-5158-1");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'thunderbird'
  package(s) announced via the DSA-5158-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"Multiple security issues were discovered in Thunderbird, which could
result in denial of service or the execution of arbitrary code.");

  script_tag(name:"affected", value:"'thunderbird' package(s) on Debian Linux.");

  script_tag(name:"solution", value:"For the oldstable distribution (buster), these problems have been fixed
in version 1:91.10.0-1~deb10u1.

For the stable distribution (bullseye), these problems have been fixed in
version 1:91.10.0-1~deb11u1.

We recommend that you upgrade your thunderbird packages.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if(!isnull(res = isdpkgvuln(pkg:"calendar-google-provider", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-af", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-all", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ar", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ast", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-be", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-bg", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-br", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ca", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-cak", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-cs", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-cy", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-da", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-de", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-dsb", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-el", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-en-ca", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-en-gb", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-es-ar", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-es-es", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-et", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-eu", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-fi", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-fr", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-fy-nl", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ga-ie", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-gd", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-gl", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-he", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hr", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hsb", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hu", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hy-am", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-id", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-is", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-it", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ja", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ka", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-kab", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-kk", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ko", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-lt", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-lv", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ms", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-nb-no", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-nl", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-nn-no", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pa-in", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pl", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pt-br", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pt-pt", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-rm", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ro", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ru", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sk", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sl", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sq", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sr", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sv-se", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-th", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-tr", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-uk", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-uz", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-vi", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-zh-cn", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-zh-tw", ver:"1:91.10.0-1~deb10u1", rls:"DEB10"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"lightning", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-all", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ar", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ast", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-be", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-bg", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-br", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ca", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-cak", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-cs", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-cy", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-da", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-de", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-dsb", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-el", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-en-gb", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-es-ar", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-es-es", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-et", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-eu", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-fi", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-fr", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-fy-nl", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ga-ie", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-gd", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-gl", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-he", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hr", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hsb", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hu", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-hy-am", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-id", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-is", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-it", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ja", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ka", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-kab", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-kk", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ko", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-lt", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ms", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-nb-no", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-nl", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-nn-no", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pl", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pt-br", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-pt-pt", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-rm", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ro", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-ru", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-si", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sk", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sl", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sq", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sr", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-sv-se", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-tr", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-uk", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-uz", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-vi", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-zh-cn", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}
if(!isnull(res = isdpkgvuln(pkg:"thunderbird-l10n-zh-tw", ver:"1:91.10.0-1~deb11u1", rls:"DEB11"))) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}

exit(0);