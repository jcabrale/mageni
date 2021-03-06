# OpenVAS Vulnerability Test
# Auto-generated from advisory DSA 3151-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.703151");
  script_version("2021-11-23T15:20:34+0000");
  script_cve_id("CVE-2015-0219", "CVE-2015-0220", "CVE-2015-0221");
  script_name("Debian Security Advisory DSA 3151-1 (python-django - security update)");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2015-02-03 00:00:00 +0100 (Tue, 03 Feb 2015)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:P/A:N");
  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"http://www.debian.org/security/2015/dsa-3151.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7");
  script_tag(name:"affected", value:"python-django on Debian Linux");
  script_tag(name:"solution", value:"For the stable distribution (wheezy),
these problems have been fixed in version 1.4.5-1+deb7u9.

For the upcoming stable distribution (jessie), these problems have been
fixed in version 1.7.1-1.1.

For the unstable distribution (sid), these problems have been fixed in
version 1.7.1-1.1.

We recommend that you upgrade your python-django packages.");
  script_tag(name:"summary", value:"Several vulnerabilities were
discovered in Django, a high-level Python web development framework. The
Common Vulnerabilities and Exposures project identifies the following problems:

CVE-2015-0219
Jedediah Smith reported that the WSGI environ in Django does not
distinguish between headers containing dashes and headers containing
underscores. A remote attacker could use this flaw to spoof WSGI
headers.

CVE-2015-0220
Mikko Ohtamaa discovered that the django.util.http.is_safe_url()
function in Django does not properly handle leading whitespaces in
user-supplied redirect URLs. A remote attacker could potentially use
this flaw to perform a cross-site scripting attack.

CVE-2015-0221
Alex Gaynor reported a flaw in the way Django handles reading files
in the django.views.static.serve() view. A remote attacker could
possibly use this flaw to mount a denial of service via resource
consumption.");
  script_tag(name:"vuldetect", value:"This check tests the installed software
version using the apt package manager.");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"python-django", ver:"1.4.5-1+deb7u9", rls:"DEB7")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"python-django-doc", ver:"1.4.5-1+deb7u9", rls:"DEB7")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}