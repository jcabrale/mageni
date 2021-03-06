# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 2842-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (C) 2014 Greenbone Networks GmbH
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
  script_oid("1.3.6.1.4.1.25623.1.0.702842");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2013-4152");
  script_name("Debian Security Advisory DSA 2842-1 (libspring-java - denial of service)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2014-01-13 00:00:00 +0100 (Mon, 13 Jan 2014)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");

  script_xref(name:"URL", value:"http://www.debian.org/security/2014/dsa-2842.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"libspring-java on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (wheezy), this problem has been fixed in
version 3.0.6.RELEASE-6+deb7u1.

For the unstable distribution (sid), this problem has been fixed in
version 3.0.6.RELEASE-10.

We recommend that you upgrade your libspring-java packages.");
  script_tag(name:"summary", value:"Alvaro Munoz discovered a XML External Entity (XXE) injection in the
Spring Framework which can be used for conducting CSRF and DoS attacks
on other sites.

The Spring OXM wrapper did not expose any property for disabling entity
resolution when using the JAXB unmarshaller. There are four possible
source implementations passed to the unmarshaller:

DOMSourceStAXSourceSAXSourceStreamSource
For a DOMSource, the XML has already been parsed by user code
and that code is responsible for protecting against XXE.

For a StAXSource, the XMLStreamReader has already been created
by user code and that code is responsible for protecting
against XXE.

For SAXSource and StreamSource instances, Spring processed
external entities by default thereby creating this
vulnerability.

The issue was resolved by disabling external entity processing
by default and adding an option to enable it for those users
that need to use this feature when processing XML from a
trusted source.

It was also identified that Spring MVC processed user provided
XML with JAXB in combination with a StAX XMLInputFactory
without disabling external entity resolution. External entity
resolution has been disabled in this case.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"libspring-aop-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-beans-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-context-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-context-support-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-core-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-expression-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-instrument-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-jdbc-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-jms-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-orm-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-oxm-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-test-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-transaction-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-web-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-web-portlet-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-web-servlet-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"libspring-web-struts-java", ver:"3.0.6.RELEASE-6+deb7u1", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if(__pkg_match) {
  exit(99);
}