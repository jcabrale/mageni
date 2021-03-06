# OpenVAS Vulnerability Test
# $Id: deb_2903.nasl 6609 2017-07-07 12:05:59Z cfischer $
# Auto-generated from advisory DSA 2903-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
    script_oid("1.3.6.1.4.1.25623.1.0.300007");
    script_version("$Revision: 6609 $");
    script_cve_id("CVE-2014-2338");
    script_name("Debian Security Advisory DSA 2903-1 (strongswan - security update)");
    script_tag(name: "last_modification", value: "$Date: 2017-07-07 14:05:59 +0200 (Fri, 07 Jul 2017) $");
    script_tag(name: "creation_date", value: "2014-04-14 00:00:00 +0200 (Mon, 14 Apr 2014)");
    script_tag(name:"cvss_base", value:"6.4");
    script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:N");
    script_tag(name: "solution_type", value: "VendorFix");

    script_xref(name: "URL", value: "http://www.debian.org/security/2014/dsa-2903.html");


    script_category(ACT_GATHER_INFO);

    script_copyright("Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net");
    script_family("Debian Local Security Checks");
    script_dependencies("gather-package-list.nasl");
    script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
    script_tag(name: "affected",  value: "strongswan on Debian Linux");
    script_tag(name: "insight",   value: "The strongSwan VPN suite is based on
the IPsec stack in standard Linux 2.6 kernels. It supports both the IKEv1 and
IKEv2 protocols.");
    script_tag(name: "solution",  value: "For the oldstable distribution (squeeze),
this problem has been fixed in version 4.4.1-5.5.

For the stable distribution (wheezy), this problem has been fixed in
version 4.5.2-1.5+deb7u3.

For the unstable distribution (sid), this problem has been fixed in
version 5.1.2-4.

We recommend that you upgrade your strongswan packages.");
    script_tag(name: "summary",   value: "An authentication bypass vulnerability
was found in charon, the daemon handling IKEv2 in strongSwan, an IKE/IPsec suite.
The state machine handling the security association (IKE_SA) handled some state
transitions incorrectly.

An attacker can trigger the vulnerability by rekeying an unestablished
IKE_SA during the initiation itself. This will trick the IKE_SA state to
established without the need to provide any valid credential.

Vulnerable setups include those actively initiating IKEv2 IKE_SA (like
?clients? or ?roadwarriors?) but also during re-authentication (which
can be initiated by the responder). Installations using IKEv1 (pluto
daemon in strongSwan 4 and earlier, and IKEv1 code in charon 5.x) is not
affected.");
    script_tag(name: "vuldetect", value: "This check tests the installed software version using the apt package manager.");
    script_tag(name:"qod_type", value:"package");
    exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"libstrongswan", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-dbg", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-ikev1", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-ikev2", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-nm", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-starter", ver:"4.4.1-5.5", rls:"DEB6.0")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libstrongswan", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-dbg", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-ikev1", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-ikev2", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-nm", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"strongswan-starter", ver:"4.5.2-1.5+deb7u3", rls_regex:"DEB7.[0-9]")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
