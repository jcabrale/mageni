###############################################################################
# OpenVAS Vulnerability Test
# $Id: mgasa-2016-0076.nasl 14180 2019-03-14 12:29:16Z cfischer $
#
# Mageia Linux security check
#
# Authors:
# Eero Volotinen <eero.volotinen@solinor.com>
#
# Copyright:
# Copyright (c) 2016 Eero Volotinen, http://www.solinor.com
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
  script_oid("1.3.6.1.4.1.25623.1.0.131227");
  script_version("$Revision: 14180 $");
  script_tag(name:"creation_date", value:"2016-02-18 07:27:34 +0200 (Thu, 18 Feb 2016)");
  script_tag(name:"last_modification", value:"$Date: 2019-03-14 13:29:16 +0100 (Thu, 14 Mar 2019) $");
  script_name("Mageia Linux Local Check: mgasa-2016-0076");
  script_tag(name:"insight", value:"Updated gnome-photos package fixes security vulnerabilities: Due to a logic error, an attempt to allocate a large block of memory fails in create_surface_from_pixbuf, leading to a crash of gnome-photos (CVE-2013-7447). A similar potential issue in view_helper_draw() in src/gegl-gtk-view-helper.c has also been patched.");
  script_tag(name:"solution", value:"Update the affected packages to the latest available version.");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name:"URL", value:"https://advisories.mageia.org/MGASA-2016-0076.html");
  script_cve_id("CVE-2013-7447");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_tag(name:"qod_type", value:"package");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/mageia_linux", "ssh/login/release", re:"ssh/login/release=MAGEIA5");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"summary", value:"Mageia Linux Local Security Checks mgasa-2016-0076");
  script_copyright("Eero Volotinen");
  script_family("Mageia Linux Local Security Checks");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release) exit(0);

res = "";

if(release == "MAGEIA5")
{
if ((res = isrpmvuln(pkg:"gnome-photos", rpm:"gnome-photos~3.14.2~1.1.mga5", rls:"MAGEIA5")) != NULL) {
  security_message(data:res);
  exit(0);
}
if (__pkg_match) exit(99);
  exit(0);
}