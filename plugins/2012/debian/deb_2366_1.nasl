# OpenVAS Vulnerability Test
# Description: Auto-generated from advisory DSA 2366-1 (mediawiki)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (C) 2012 E-Soft Inc.
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or at your option, GNU General Public License version 3,
# as published by the Free Software Foundation
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
  script_oid("1.3.6.1.4.1.25623.1.0.70578");
  script_tag(name:"cvss_base", value:"5.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:N");
  script_cve_id("CVE-2011-1578", "CVE-2011-1579", "CVE-2011-1580", "CVE-2011-1587", "CVE-2011-4360", "CVE-2011-4361");
  script_version("2021-11-23T15:20:34+0000");
  script_tag(name:"last_modification", value:"2021-11-24 11:00:45 +0000 (Wed, 24 Nov 2021)");
  script_tag(name:"creation_date", value:"2012-02-11 02:34:53 -0500 (Sat, 11 Feb 2012)");
  script_name("Debian Security Advisory DSA 2366-1 (mediawiki)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2012 E-Soft Inc.");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB(5|6)");
  script_xref(name:"URL", value:"https://secure1.securityspace.com/smysecure/catid.html?in=DSA%202366-1");
  script_tag(name:"insight", value:"Several problems have been discovered in mediawiki, a website engine for
collaborative work.

CVE-2011-1578 CVE-2011-1587

Masato Kinugawa discovered a cross-site scripting (XSS) issue, which
affects Internet Explorer clients only, and only version 6 and
earlier. Web server configuration changes are required to fix this
issue. Upgrading MediaWiki will only be sufficient for people who use
Apache with AllowOverride enabled.

CVE-2011-1579

Wikipedia user Suffusion of Yellow discovered a CSS validation error
in the wikitext parser. This is an XSS issue for Internet Explorer
clients, and a privacy loss issue for other clients since it allows
the embedding of arbitrary remote images.

CVE-2011-1580

MediaWiki developer Happy-Melon discovered that the transwiki import
feature neglected to perform access control checks on form submission.
The transwiki import feature is disabled by default. If it is enabled,
it allows wiki pages to be copied from a remote wiki listed in
$wgImportSources. The issue means that any user can trigger such an
import to occur.

CVE-2011-4360

Alexandre Emsenhuber discovered an issue where page titles on private
wikis could be exposed bypassing different page ids to index.php. In the
case of the user not having correct permissions, they will now be redirected
to Special:BadTitle.

CVE-2011-4361

Tim Starling discovered that action=ajax requests were dispatched to the
relevant function without any read permission checks being done. This could
have led to data leakage on private wikis.

For the oldstable distribution (lenny), these problems have been fixed in
version 1:1.12.0-2lenny9.

For the stable distribution (squeeze), these problems have been fixed in
version 1:1.15.5-2squeeze2.

For the unstable distribution (sid), these problems have been fixed in
version 1:1.15.5-5.");

  script_tag(name:"solution", value:"We recommend that you upgrade your mediawiki packages.");
  script_tag(name:"summary", value:"The remote host is missing an update to mediawiki
announced via advisory DSA 2366-1.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if((res = isdpkgvuln(pkg:"mediawiki", ver:"1:1.12.0-2lenny9", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mediawiki-math", ver:"1:1.12.0-2lenny9", rls:"DEB5")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mediawiki", ver:"1:1.15.5-2squeeze2", rls:"DEB6")) != NULL) {
  report += res;
}
if((res = isdpkgvuln(pkg:"mediawiki-math", ver:"1:1.15.5-2squeeze2", rls:"DEB6")) != NULL) {
  report += res;
}

if(report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}