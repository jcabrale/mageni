# Copyright (C) 2020 Greenbone Networks GmbH
# Some text descriptions might be excerpted from the referenced
# advisories, and are Copyright (C) by the respective right holder(s)
#
# SPDX-License-Identifier: GPL-2.0-or-later
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


CPE = "cpe:/a:mozilla:firefox";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.816740");
  script_version("2020-04-10T03:46:49+0000");
  script_cve_id("CVE-2020-6821", "CVE-2020-6822", "CVE-2020-6823", "CVE-2020-6824",
                "CVE-2020-6825", "CVE-2020-6826");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"last_modification", value:"2020-04-14 09:52:40 +0000 (Tue, 14 Apr 2020)");
  script_tag(name:"creation_date", value:"2020-04-08 15:55:20 +0530 (Wed, 08 Apr 2020)");
  script_name("Mozilla Firefox Security Updates( mfsa_2020-12_2020-13 )-Windows");

  script_tag(name:"summary", value:"This host is installed with
  Mozilla Firefox and is prone to multiple vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on
  the target host.");

  script_tag(name:"insight", value:"Multiple flaws exist due to,

  - A file overwrite issue in the user's profile directory.

  - An uninitialized memory could be read when using the WebGL copyTexSubImage
    method.

  - An out of bounds write issue in GMPDecodeData when processing large images.

  - Memory safety bugs.");

  script_tag(name:"impact", value:"Successful exploitation allows remote
  attackers to execute arbitrary code and disclose sensitive data.");

  script_tag(name:"affected", value:"Mozilla Firefox version before
  75 on Windows.");

  script_tag(name:"solution", value:"Upgrade to Mozilla Firefox version 75
  or later.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"registry");
  script_xref(name:"URL", value:"https://www.mozilla.org/en-US/firefox/new/");
  script_xref(name:"URL", value:"https://www.mozilla.org/en-US/security/advisories/mfsa2020-12/");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2020 Greenbone Networks GmbH");
  script_family("General");
  script_dependencies("gb_firefox_detect_win.nasl");
  script_mandatory_keys("Firefox/Win/Ver");
  script_xref(name:"URL", value:"http://www.mozilla.com/en-US/firefox/all.html");
  exit(0);
}


include("host_details.inc");
include("version_func.inc");

if( ! infos = get_app_version_and_location( cpe:CPE, exit_no_version:TRUE) ) exit( 0 );
ffVer = infos['version'];
ffPath = infos['location'];

if(version_is_less(version:ffVer, test_version:"75"))
{
  report = report_fixed_ver(installed_version:ffVer, fixed_version:"75", install_path:ffPath);
  security_message(data:report);
  exit(0);
}
exit(99);