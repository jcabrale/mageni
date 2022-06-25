# Copyright (C) 2022 Greenbone Networks GmbH
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

CPE = "cpe:/a:servmask:one-stop_wp_migration";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.127009");
  script_version("2022-05-13T08:07:25+0000");
  script_tag(name:"last_modification", value:"2022-05-13 10:17:58 +0000 (Fri, 13 May 2022)");
  script_tag(name:"creation_date", value:"2022-05-13 08:02:19 +0000 (Fri, 13 May 2022)");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:H/Au:M/C:P/I:P/A:P");

  script_cve_id("CVE-2022-1476");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("WordPress All-in-One WP Migration Plugin <= 7.58 Arbitrary File Deletion Vulnerability");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (C) 2022 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("gb_wordpress_plugin_http_detect.nasl");
  script_mandatory_keys("wordpress/plugin/all-in-one-wp-migration/detected");

  script_tag(name:"summary", value:"The WordPress plugin All-in-One WP Migration is prone to an
  arbitrary file deletion vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The plugin vulnerable to arbitrary file deletion
  via directory traversal due to insufficient file validation
   via the ~/lib/model/class-ai1wm-backups.php file.");

  script_tag(name:"affected", value:"WordPress All-in-One WP Migration plugin version 7.58 and
  prior.");

  script_tag(name:"solution", value:"Update to version 7.59 or later.");

  script_xref(name:"URL", value:"https://plugins.trac.wordpress.org/changeset?sfp_email=&sfph_mail=&reponame=&old=2715609%40all-in-one-wp-migration&new=2715609%40all-in-one-wp-migration&sfp_email=&sfph_mail=");
  script_xref(name:"URL", value:"https://www.wordfence.com/vulnerability-advisories/#CVE-2022-1476");
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!port = get_app_port(cpe: CPE))
  exit(0);

if (!infos = get_app_version_and_location(cpe: CPE, port: port, exit_no_version: TRUE))
  exit(0);

version = infos["version"];
location = infos["location"];

if (version_is_less(version: version, test_version: "7.59")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "7.59", install_path: location);
  security_message(port: port, data: report);
  exit(0);
}

exit(99);