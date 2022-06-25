#CESA-2009:1452 64986 4
# $Id: ovcesa2009_1452.nasl 6650 2017-07-10 11:43:12Z cfischer $
# Description: Auto-generated from advisory CESA-2009:1452 (neon)
#
# Authors:
# Thomas Reinke <reinke@securityspace.com>
#
# Copyright:
# Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com
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

include("revisions-lib.inc");
tag_insight = "For details on the issues addressed in this update,
please visit the referenced security advisories.";
tag_solution = "Update the appropriate packages on your system.

http://www.securityspace.com/smysecure/catid.html?in=CESA-2009:1452
http://www.securityspace.com/smysecure/catid.html?in=RHSA-2009:1452
https://rhn.redhat.com/errata/RHSA-2009-1452.html";
tag_summary = "The remote host is missing updates to neon announced in
advisory CESA-2009:1452.";



if(description)
{
 script_oid("1.3.6.1.4.1.25623.1.0.308324");
 script_version("$Revision: 6650 $");
 script_tag(name:"last_modification", value:"$Date: 2017-07-10 13:43:12 +0200 (Mon, 10 Jul 2017) $");
 script_tag(name:"creation_date", value:"2009-09-28 19:09:13 +0200 (Mon, 28 Sep 2009)");
 script_cve_id("CVE-2009-2473", "CVE-2009-2474");
 script_tag(name:"cvss_base", value:"6.8");
 script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
 script_name("CentOS Security Advisory CESA-2009:1452 (neon)");



 script_category(ACT_GATHER_INFO);

 script_copyright("Copyright (c) 2009 E-Soft Inc. http://www.securityspace.com");
 script_family("CentOS Local Security Checks");
 script_dependencies("gather-package-list.nasl");
 script_mandatory_keys("ssh/login/centos", "ssh/login/rpms");
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

include("pkg-lib-rpm.inc");

res = "";
report = "";
if ((res = isrpmvuln(pkg:"neon", rpm:"neon~0.24.7~4.el4_8.2", rls:"CentOS4")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"neon-devel", rpm:"neon-devel~0.24.7~4.el4_8.2", rls:"CentOS4")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"neon", rpm:"neon~0.25.5~10.el5_4.1", rls:"CentOS5")) != NULL) {
    report += res;
}
if ((res = isrpmvuln(pkg:"neon-devel", rpm:"neon-devel~0.25.5~10.el5_4.1", rls:"CentOS5")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}