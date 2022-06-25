# Copyright (C) 2016 Greenbone Networks GmbH
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
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

CPE = "cpe:/h:f5:big-ip";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.140052");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_version("2021-05-03T13:21:59+0000");

  script_name("F5 BIG-IP - Configuration utility CSRF vulnerability");

  script_xref(name:"URL", value:"https://support.f5.com/csp/article/K61045143");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"solution", value:"See the referenced vendor advisory for a solution.");

  script_tag(name:"summary", value:"A cross-site request forgery (CSRF) vulnerability in the Traffic Management User Interface (TMUI), also referred to as the Configuration utility, may allow a malicious site to force an administrative session to log out and require re-authentication.");

  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  script_tag(name:"last_modification", value:"2021-05-04 10:22:24 +0000 (Tue, 04 May 2021)");
  script_tag(name:"creation_date", value:"2016-11-07 15:21:59 +0100 (Mon, 07 Nov 2016)");
  script_category(ACT_GATHER_INFO);
  script_family("F5 Local Security Checks");
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_dependencies("gb_f5_big_ip_version.nasl");
  script_mandatory_keys("f5/big_ip/version", "f5/big_ip/active_modules");
  exit(0);
}

include("version_func.inc");
include("host_details.inc");
include("list_array_func.inc");
include("f5.inc");

if (!version = get_app_version(cpe: CPE))
  exit(0);

check_f5["LTM"] = make_array("affected",   "11.6.0-11.6.1;11.2.1-11.5.4_HF1;10.2.1-10.2.4;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["AAM"] = make_array("affected",   "11.6.0-11.6.1;11.4.0-11.5.4_HF1;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["AFM"] = make_array("affected",   "11.6.0-11.6.1;11.4.0-11.5.4_HF1;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["AVR"] = make_array("affected",   "11.6.0-11.6.1;11.2.1-11.5.4_HF1;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["APM"] = make_array("affected",   "11.6.0-11.6.1;11.2.1-11.5.4_HF1;10.2.1-10.2.4;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["ASM"] = make_array("affected",   "11.6.0-11.6.1;11.2.1-11.5.4_HF1;10.2.1-10.2.4;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["GTM"] = make_array("affected",   "11.6.0-11.6.1;11.2.1-11.5.4_HF1;10.2.1-10.2.4;",
                             "unaffected", "11.6.1_HF1;11.5.4_HF2;");

check_f5["LC"]  = make_array("affected",   "11.6.0-11.6.1;11.2.1-11.5.4_HF1;10.2.1-10.2.4;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

check_f5["PEM"] = make_array("affected",   "11.6.0-11.6.1;11.4.0-11.5.4_HF1;",
                             "unaffected", "12.0.0-12.1.1;11.6.1_HF1;11.5.4_HF2;");

if (report = f5_is_vulnerable(ca: check_f5, version: version)) {
  security_message(port: 0, data: report);
  exit(0);
}

exit(99);