##############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_grammarly_ext_google_chrome_info_disc_vuln_lin.nasl 9119 2018-03-16 15:21:49Z cfischer $
#
# Grammarly Extension For Google Chrome Information Disclosure Vulnerability - Linux
#
# Authors:
# Shakeel <bshakeel@secpod.com> 
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.812697");
  script_version("$Revision: 9119 $");
  script_cve_id("CVE-2018-6654");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-03-16 16:21:49 +0100 (Fri, 16 Mar 2018) $");
  script_tag(name:"creation_date", value:"2018-02-08 14:22:37 +0530 (Thu, 08 Feb 2018)");
  script_name("Grammarly Extension For Google Chrome Information Disclosure Vulnerability - Linux");

  script_tag(name:"summary", value:"The host is installed with Grammarly Spell
  Checker for Google Chrome and is prone to information disclosure vulnerability.");

  script_tag(name:"vuldetect", value:"Get the installed version of Grammarly Spell
  Checker for Google Chrome and check the version is vulnerable or not.");

  script_tag(name:"insight", value:"The flaw exists as the extension exposes its
  auth tokens to all websites");

  script_tag(name: "impact" , value:"Successful exploitation of this vulnerability
  will allow any user to login grammarly.com as victim and access all his documents,
  history, logs, and all other data.

  Impact Level: Application");

  script_tag(name: "affected" , value:"Grammarly extension before 14.826.1446 for
  Chrome on Linux");

  script_tag(name: "solution", value:"Upgrade to Grammarly extension 14.826.1446
  or later. For updates refer to https://www.grammarly.com/");

  script_tag(name:"solution_type", value:"VendorFix");

  script_tag(name:"qod", value:"75");

  script_xref(name : "URL" , value : "https://bugs.chromium.org/p/project-zero/issues/detail?id=1527&desc=2");
  script_xref(name : "URL" , value : "https://thehackernews.com/2018/02/grammar-checking-software.html");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("gb_google_chrome_detect_lin.nasl");
  script_mandatory_keys("Google-Chrome/Linux/Ver");
  exit(0);
}

include("ssh_func.inc");
include("version_func.inc");
include("host_details.inc");

version ="";
sock="";

sock = ssh_login_or_reuse_connection();
if(!sock) {
  exit(0);
}

paths = find_file(file_name:"Grammarly.html", file_path:"/", useregex:TRUE,
                  regexpar:"$", sock:sock);
if(!paths){
  exit(0);
}

foreach path (paths)
{
  file = chomp(path);
  ver = eregmatch(pattern:"(.*(g|G)oogle.(c|C)hrome.*(e|E)xtensions.*[A-za-z]+/([0-9.]+).*)(g|G)rammarly.html", string:file );
  if(!ver[5]){
    continue;
  }
  version = ver[5];
  filePath = ver[0];

  if(version_is_less(version:version, test_version:"14.826.1446"))
  {
    report = report_fixed_ver(installed_version:version, fixed_version:"14.826.1446", install_path:filePath);
    security_message(data:report);
    exit(0);
  }
}
exit(0);
