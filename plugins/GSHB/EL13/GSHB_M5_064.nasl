###############################################################################
# OpenVAS Vulnerability Test
# $Id: GSHB_M5_064.nasl 10616 2018-07-25 13:37:26Z cfischer $
#
# IT-Grundschutz, 13. EL, Ma?nahme 5.064
#
# Authors:
# Thomas Rotter <thomas.rotter@greenbone.net>
#
# Copyright:
# Copyright (c) 2013 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.95040");
  script_version("$Revision: 10616 $");
  script_tag(name:"last_modification", value:"$Date: 2018-07-25 15:37:26 +0200 (Wed, 25 Jul 2018) $");
  script_tag(name:"creation_date", value:"2013-11-20 16:10:39 +0100 (Wed, 20 Nov 2013)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("IT-Grundschutz M5.064: Secure Shell");
  script_xref(name:"URL", value:"http://www.bsi.bund.de/DE/Themen/ITGrundschutz/ITGrundschutzKataloge/Inhalt/_content/m/m05/m05064.html");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"remote_banner");
  script_copyright("Copyright (c) 2013 Greenbone Networks GmbH");
  script_family("IT-Grundschutz-13");
  script_mandatory_keys("Compliance/Launch/GSHB-13");
  script_dependencies("compliance_tests.nasl", "find_service.nasl", "ssh_detect.nasl");

  script_tag(name:"summary", value:"IT-Grundschutz M5.064: Secure Shell.

ACHTUNG: Dieser Test wird nicht mehr unterst?tzt. Er wurde ersetzt durch
den entsprechenden Test der nun permanent and die aktuelle EL angepasst
wird: OID 1.3.6.1.4.1.25623.1.0.95065

Stand: 13. Erg?nzungslieferung (13. EL).");

  script_tag(name:"deprecated", value:TRUE);

  exit(0);
}

exit(66);
