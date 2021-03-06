# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3397-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
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
#

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.703397");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2015-4141", "CVE-2015-4142", "CVE-2015-4143", "CVE-2015-4144",
                "CVE-2015-4145", "CVE-2015-4146", "CVE-2015-5310", "CVE-2015-5314",
                "CVE-2015-5315", "CVE-2015-5316", "CVE-2015-8041");
  script_name("Debian Security Advisory DSA 3397-1 (wpa - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2015-11-10 00:00:00 +0100 (Tue, 10 Nov 2015)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2015/dsa-3397.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(7|8)");
  script_tag(name:"affected", value:"wpa on Debian Linux");
  script_tag(name:"solution", value:"For the oldstable distribution (wheezy),
these problems have been fixed in version 1.0-3+deb7u3. The oldstable distribution
(wheezy) is only affected by
CVE-2015-4141,
CVE-2015-4142,
CVE-2015-4143 and
CVE-2015-8041
.

For the stable distribution (jessie), these problems have been fixed in
version 2.3-1+deb8u3.

We recommend that you upgrade your wpa packages.");
  script_tag(name:"summary", value:"Several vulnerabilities have been
discovered in wpa_supplicant and hostapd. The Common Vulnerabilities and Exposures
project identifies the following problems:

CVE-2015-4141
Kostya Kortchinsky of the Google Security Team discovered a
vulnerability in the WPS UPnP function with HTTP chunked transfer
encoding which may result in a denial of service.

CVE-2015-4142
Kostya Kortchinsky of the Google Security Team discovered a
vulnerability in the WMM Action frame processing which may result in
a denial of service.

CVE-2015-4143 CVE-2015-4144 CVE-2015-4145 CVE-2015-4146
Kostya Kortchinsky of the Google Security Team discovered that
EAP-pwd payload is not properly validated which may result in a
denial of service.

CVE-2015-5310
Jouni Malinen discovered a flaw in the WMM Sleep Mode Response frame
processing. A remote attacker can take advantage of this flaw to
mount a denial of service.

CVE-2015-5314 CVE-2015-5315
Jouni Malinen discovered a flaw in the handling of EAP-pwd messages
which may result in a denial of service.

CVE-2015-5316
Jouni Malinen discovered a flaw in the handling of EAP-pwd Confirm
messages which may result in a denial of service.

CVE-2015-8041
Incomplete WPS and P2P NFC NDEF record payload length validation may
result in a denial of service.");
  script_tag(name:"vuldetect", value:"This check tests the installed
software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"hostapd", ver:"1.0-3+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wpagui", ver:"1.0-3+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wpasupplicant", ver:"1.0-3+deb7u3", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"hostapd", ver:"2.3-1+deb8u3", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wpagui", ver:"2.3-1+deb8u3", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wpasupplicant", ver:"2.3-1+deb8u3", rls:"DEB8")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}