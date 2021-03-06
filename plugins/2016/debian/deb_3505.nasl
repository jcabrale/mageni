# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3505-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.703505");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2015-7830", "CVE-2015-8711", "CVE-2015-8712", "CVE-2015-8713",
                "CVE-2015-8714", "CVE-2015-8715", "CVE-2015-8716", "CVE-2015-8717",
                "CVE-2015-8718", "CVE-2015-8719", "CVE-2015-8720", "CVE-2015-8721",
                "CVE-2015-8722", "CVE-2015-8723", "CVE-2015-8724", "CVE-2015-8725",
                "CVE-2015-8726", "CVE-2015-8727", "CVE-2015-8728", "CVE-2015-8729",
                "CVE-2015-8730", "CVE-2015-8732", "CVE-2015-8733");
  script_name("Debian Security Advisory DSA 3505-1 (wireshark - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2016-03-04 00:00:00 +0100 (Fri, 04 Mar 2016)");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"http://www.debian.org/security/2016/dsa-3505.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(8|7|9)");
  script_tag(name:"affected", value:"wireshark on Debian Linux");
  script_tag(name:"solution", value:"For the oldstable distribution (wheezy),
these problems have been fixed in version 1.8.2-5wheezy17.

For the stable distribution (jessie), these problems have been fixed in
version 1.12.1+g01b65bf-4+deb8u4.

For the testing distribution (stretch), these problems have been fixed
in version 2.0.2+ga16e22e-1.

For the unstable distribution (sid), these problems have been fixed in
version 2.0.2+ga16e22e-1.

We recommend that you upgrade your wireshark packages.");
  script_tag(name:"summary", value:"Multiple vulnerabilities were
discovered in the dissectors/parsers for Pcapng, NBAP, UMTS FP, DCOM, AllJoyn,
T.38, SDP, NLM, DNS, BED, SCTP, 802.11, DIAMETER, VeriWave, RVSP, ANSi A, GSM A,
Ascend, NBAP, ZigBee ZCL and Sniffer which could result in denial of service.");
  script_tag(name:"vuldetect", value:"This check tests the installed
software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libwireshark-data", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-dev", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark5:amd64", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark5:i386", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap-dev", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap4:amd64", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap4:i386", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil-dev", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil4:amd64", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil4:i386", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"tshark", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dbg", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-doc", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-qt", ver:"1.12.1+g01b65bf-4+deb8u4", rls:"DEB8")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-data", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-dev", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark2:amd64", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark2:i386", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap-dev", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap2:amd64", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap2:i386", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil-dev", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil2:amd64", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil2:i386", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"tshark", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dbg", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-doc", ver:"1.8.2-5wheezy17", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-data", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark-dev", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark6:amd64", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwireshark6:i386", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap-dev", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap5:amd64", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwiretap5:i386", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil-dev", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil6:amd64", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libwsutil6:i386", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"tshark", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-common", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-dev", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-doc", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-gtk", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"wireshark-qt", ver:"2.0.2+ga16e22e-1", rls:"DEB9")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}