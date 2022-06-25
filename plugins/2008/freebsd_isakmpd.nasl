#
#VID b7cb488c-8349-11d8-a41f-0020ed76ef5a
# OpenVAS Vulnerability Test
# $
# Description: Auto generated from vuxml or freebsd advisories
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2008 E-Soft Inc. http://www.securityspace.com
# Text descriptions are largely excerpted from the referenced
# advisories, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
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

include("revisions-lib.inc");
tag_insight = "The following package is affected: isakmpd

CVE-2004-0218
isakmpd in OpenBSD 3.4 and earlier allows remote attackers to cause a
denial of service (infinite loop) via an ISAKMP packet with a
zero-length payload, as demonstrated by the Striker ISAKMP Protocol
Test Suite.

CVE-2004-0219
isakmpd in OpenBSD 3.4 and earlier allows remote attackers to cause a
denial of service (crash) via an ISAKMP packet with a malformed IPSEC
SA payload, as demonstrated by the Striker ISAKMP Protocol Test Suite.

CVE-2004-0220
isakmpd in OpenBSD 3.4 and earlier allows remote attackers to cause a
denial of service via a an ISAKMP packet with a malformed Cert Request
payload, which causes an integer underflow that is used in a malloc
operation that is not properly handled, , as demonstrated by the
Striker ISAKMP Protocol Test Suite.

CVE-2004-0221
isakmpd in OpenBSD 3.4 and earlier allows remote attackers to cause a
denial of service (crash) via an ISAKMP packet with a delete payload
containing a large number of SPIs, which triggers an out-of-bounds
read error, as demonstrated by the Striker ISAKMP Protocol Test Suite.

CVE-2004-0222
Multiple memory leaks in isakmpd in OpenBSD 3.4 and earlier allow
remote attackers to cause a denial of service (memory exhaustion) via
certain ISAKMP packets, as demonstrated by the Striker ISAKMP Protocol
Test Suite.";
tag_solution = "Update your system with the appropriate patches or
software upgrades.

http://www.rapid7.com/advisories/R7-0018.html
http://www.openbsd.org/errata34.html
http://www.vuxml.org/freebsd/b7cb488c-8349-11d8-a41f-0020ed76ef5a.html";
tag_summary = "The remote host is missing an update to the system
as announced in the referenced advisory.";


if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.303952");
 script_version("$Revision: 4125 $");
 script_tag(name:"last_modification", value:"$Date: 2016-09-21 07:39:51 +0200 (Wed, 21 Sep 2016) $");
 script_tag(name:"creation_date", value:"2008-09-04 20:41:11 +0200 (Thu, 04 Sep 2008)");
 script_cve_id("CVE-2004-0218", "CVE-2004-0219", "CVE-2004-0220", "CVE-2004-0221", "CVE-2004-0222");
 script_tag(name:"cvss_base", value:"10.0");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
 script_name("FreeBSD Ports: isakmpd");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2005 E-Soft Inc. http://www.securityspace.com");
 script_family("FreeBSD Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/freebsdrel", "login/SSH/success");
 script_tag(name : "insight" , value : tag_insight);
 script_tag(name : "solution" , value : tag_solution);
 script_tag(name : "summary" , value : tag_summary);
 script_tag(name:"qod_type", value:"package");
 script_tag(name:"solution_type", value:"VendorFix");
 exit(0);
}

#
# The script code starts here
#

include("pkg-lib-bsd.inc");

txt = "";
vuln = 0;
bver = portver(pkg:"isakmpd");
if(!isnull(bver) && revcomp(a:bver, b:"20030903")<=0) {
    txt += 'Package isakmpd version ' + bver + ' is installed which is known to be vulnerable.\n';
    vuln = 1;
}

if(vuln) {
    security_message(data:string(txt));
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}