###############################################################################
# OpenVAS Vulnerability Test
#
# RedHat Update for python RHSA-2007:1076-02
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (c) 2009 Greenbone Networks GmbH, http://www.greenbone.net
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

include("revisions-lib.inc");
tag_insight = "Python is an interpreted, interactive, object-oriented programming
  language.

  An integer overflow flaw was discovered in the way Python's pcre module
  handled certain regular expressions. If a Python application used the pcre
  module to compile and execute untrusted regular expressions, it may be
  possible to cause the application to crash, or allow arbitrary code
  execution with the privileges of the Python interpreter. (CVE-2006-7228)
  
  A flaw was discovered in the strxfrm() function of Python's locale module.
  Strings generated by this function were not properly NULL-terminated. This
  may possibly cause disclosure of data stored in the memory of a Python
  application using this function. (CVE-2007-2052)
  
  Multiple integer overflow flaws were discovered in Python's imageop module.
  If an application written in Python used the imageop module to process
  untrusted images, it could cause the application to crash, enter an
  infinite loop, or possibly execute arbitrary code with the privileges of
  the Python interpreter. (CVE-2007-4965)
  
  Users of Python are advised to upgrade to these updated packages, which
  contain backported patches to resolve these issues.";

tag_affected = "python on Red Hat Enterprise Linux AS version 3,
  Red Hat Enterprise Linux ES version 3,
  Red Hat Enterprise Linux WS version 3,
  Red Hat Enterprise Linux AS version 4,
  Red Hat Enterprise Linux ES version 4,
  Red Hat Enterprise Linux WS version 4";
tag_solution = "Please Install the Updated Packages.";



if(description)
{
  script_xref(name : "URL" , value : "https://www.redhat.com/archives/rhsa-announce/2007-December/msg00007.html");
  script_oid("1.3.6.1.4.1.25623.1.0.308017");
  script_version("$Revision: 6683 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-12 11:41:57 +0200 (Wed, 12 Jul 2017) $");
  script_tag(name:"creation_date", value:"2009-03-06 07:30:35 +0100 (Fri, 06 Mar 2009)");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_xref(name: "RHSA", value: "2007:1076-02");
  script_cve_id("CVE-2006-7228", "CVE-2007-2052", "CVE-2007-4965");
  script_name( "RedHat Update for python RHSA-2007:1076-02");

  script_tag(name:"summary", value:"Check for the Version of python");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2009 Greenbone Networks GmbH");
  script_family("Red Hat Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/rhel", "ssh/login/rpms");
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");


res = "";
if(release == NULL){
  exit(0);
}

if(release == "RHENT_4")
{

  if ((res = isrpmvuln(pkg:"python", rpm:"python~2.3.4~14.4.el4_6.1", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-debuginfo", rpm:"python-debuginfo~2.3.4~14.4.el4_6.1", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-devel", rpm:"python-devel~2.3.4~14.4.el4_6.1", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-docs", rpm:"python-docs~2.3.4~14.4.el4_6.1", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-tools", rpm:"python-tools~2.3.4~14.4.el4_6.1", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"tkinter", rpm:"tkinter~2.3.4~14.4.el4_6.1", rls:"RHENT_4")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "RHENT_3")
{

  if ((res = isrpmvuln(pkg:"python", rpm:"python~2.2.3~6.8", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-debuginfo", rpm:"python-debuginfo~2.2.3~6.8", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-devel", rpm:"python-devel~2.2.3~6.8", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"python-tools", rpm:"python-tools~2.2.3~6.8", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"tkinter", rpm:"tkinter~2.2.3~6.8", rls:"RHENT_3")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
