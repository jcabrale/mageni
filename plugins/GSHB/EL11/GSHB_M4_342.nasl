###############################################################################
# OpenVAS Vulnerability Test
# $Id: GSHB_M4_342.nasl 11397 2018-09-14 16:43:26Z cfischer $
#
# IT-Grundschutz, 11. EL, Ma?nahme 4.342
#
# Authors:
# Thomas Rotter <T.Rotter@dn-systems.de>
#
# Copyright:
# Copyright (c) 2010 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.894342");
  script_version("$Revision: 11397 $");
  script_tag(name:"last_modification", value:"$Date: 2018-09-14 18:43:26 +0200 (Fri, 14 Sep 2018) $");
  script_tag(name:"creation_date", value:"2010-01-15 16:20:21 +0100 (Fri, 15 Jan 2010)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("IT-Grundschutz M4.342: Aktivierung des Last Access Zeitstempels unter Windows Vista (Windows)");
  script_xref(name:"URL", value:"http://www.bsi.bund.de/DE/Themen/ITGrundschutz/ITGrundschutzKataloge/Inhalt/_content/m/m04/m04342.html");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"registry");
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("IT-Grundschutz-11");
  script_mandatory_keys("Compliance/Launch/GSHB-11", "Tools/Present/wmi");
  script_dependencies("GSHB/GSHB_WMI_OSInfo.nasl");
  script_require_keys("1.3.6.1.4.1.25623.1.0.96047/RESULT");

  script_tag(name:"summary", value:"IT-Grundschutz M4.342: Aktivierung des Last Access Zeitstempels unter Windows VistaWin).

  ACHTUNG: Dieser Test wird nicht mehr unterst?tzt. Er wurde ersetzt durch
  den entsprechenden Test der nun permanent and die aktuelle EL angepasst
  wird: OID 1.3.6.1.4.1.25623.1.0.94247

  Diese Pr?fung bezieht sich auf die 11. Erg?nzungslieferung (11. EL) des IT-
  Grundschutz. Die detaillierte Beschreibung zu dieser Ma?nahme findet sich unter
  nachfolgendem Verweis. Es ist zu beachten, dass der dortige Text sich immer auf
  die aktuellste Erg?nzungslieferung bezieht. Titel und Inhalt k?nnen sich bei einer
  Aktualisierung ?ndern, allerdings nicht die Kernthematik.");

  script_tag(name:"deprecated", value:TRUE);

  exit(0);
}

exit(66);