###############################################################################
# OpenVAS Vulnerability Test
# $Id: GSHB_M4_284.nasl 11531 2018-09-21 18:50:24Z cfischer $
#
# IT-Grundschutz, 13. EL, Ma?nahme 4.284
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
  script_oid("1.3.6.1.4.1.25623.1.0.94148");
  script_version("$Revision: 11531 $");
  script_tag(name:"last_modification", value:"$Date: 2018-09-21 20:50:24 +0200 (Fri, 21 Sep 2018) $");
  script_tag(name:"creation_date", value:"2013-11-20 15:00:23 +0100 (Wed, 20 Nov 2013)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("IT-Grundschutz M4.284: Umgang mit Diensten unter Windows Server 2003");
  script_xref(name:"URL", value:"http://www.bsi.bund.de/DE/Themen/ITGrundschutz/ITGrundschutzKataloge/Inhalt/_content/m/m04/m04284.html");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"registry");
  script_copyright("Copyright (c) 2013 Greenbone Networks GmbH");
  script_family("IT-Grundschutz-13");
  script_mandatory_keys("Compliance/Launch/GSHB-13", "Tools/Present/wmi");
  script_dependencies("GSHB/GSHB_WMI_list_Services.nasl", "GSHB/GSHB_WMI_get_AdminUsers.nasl", "GSHB/GSHB_WMI_OSInfo.nasl");
  script_require_keys("WMI/nonSystemServices", "WMI/LocalWindowsAdminUsers", "WMI/WMI_OSVER", "WMI/WMI_OSNAME");
  script_tag(name:"summary", value:"IT-Grundschutz M4.284: Umgang mit Diensten unter Windows Server 2003.

ACHTUNG: Dieser Test wird nicht mehr unterst?tzt. Er wurde ersetzt durch
den entsprechenden Test der nun permanent and die aktuelle EL angepasst
wird: OID 1.3.6.1.4.1.25623.1.0.94224

Stand: 13. Erg?nzungslieferung (13. EL).");
  script_tag(name:"deprecated", value:TRUE);

  exit(0);
}

exit(66);
