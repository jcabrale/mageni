###############################################################################
# OpenVAS Vulnerability Test
#
# Microsoft Word 2010 Service Pack 2 Tampering Vulnerability (KB4022202)
#
# Authors:
# Rajat Mishra <rajatm@secpod.com>
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
  script_oid("1.3.6.1.4.1.25623.1.0.813565");
  script_version("2019-05-03T08:55:39+0000");
  script_cve_id("CVE-2018-8310");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:P/A:N");
  script_tag(name:"last_modification", value:"2019-05-03 08:55:39 +0000 (Fri, 03 May 2019)");
  script_tag(name:"creation_date", value:"2018-07-11 09:28:13 +0530 (Wed, 11 Jul 2018)");
  script_name("Microsoft Word 2010 Service Pack 2 Tampering Vulnerability (KB4022202)");

  script_tag(name:"summary", value:"This host is missing an important security
  update according to Microsoft KB4022202");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists due to Microsoft
  Outlook does not properly handle specific attachment types when
  rendering HTML emails.");

  script_tag(name:"impact", value:"Successful exploitation will allow an
  attacker to bypass certain security restrictions, this may aid in
  launching further attacks.");

  script_tag(name:"affected", value:"Microsoft Word 2010 Service Pack 2");

  script_tag(name:"solution", value:"The vendor has released updates. Please see the references for more information.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"executable_version");
  script_xref(name:"URL", value:"https://support.microsoft.com/en-us/help/4022202");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_office_products_version_900032.nasl");
  script_mandatory_keys("SMB/Office/Word/Version");
  exit(0);
}


include("smb_nt.inc");
include("host_details.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

exeVer = get_kb_item("SMB/Office/Word/Version");
if(!exeVer){
  exit(0);
}

exePath = get_kb_item("SMB/Office/Word/Install/Path");
if(!exePath){
  exePath = "Unable to fetch the install path";
}

if(version_in_range(version:exeVer, test_version:"14.0", test_version2:"14.0.7211.4999"))
{
  report = report_fixed_ver(file_checked:exePath + "winword.exe",
                            file_version:exeVer, vulnerable_range:"14.0 - 14.0.7211.4999");
  security_message(data:report);
  exit(0);
}