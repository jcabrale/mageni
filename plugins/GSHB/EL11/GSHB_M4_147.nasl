###############################################################################
# OpenVAS Vulnerability Test
# $Id: GSHB_M4_147.nasl 10623 2018-07-25 15:14:01Z cfischer $
#
# IT-Grundschutz, 11. EL, Ma?nahme 4.147
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
  script_oid("1.3.6.1.4.1.25623.1.0.894147");
  script_version("$Revision: 10623 $");
  script_tag(name:"last_modification", value:"$Date: 2018-07-25 17:14:01 +0200 (Wed, 25 Jul 2018) $");
  script_tag(name:"creation_date", value:"2010-01-14 14:29:35 +0100 (Thu, 14 Jan 2010)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("IT-Grundschutz M4.147: Sichere Nutzung von EFS unter Windows (Windows)");
  script_xref(name:"URL", value:"http://www.bsi.bund.de/DE/Themen/ITGrundschutz/ITGrundschutzKataloge/Inhalt/_content/m/m04/m04147.html");
  script_category(ACT_GATHER_INFO);
  script_tag(name:"qod_type", value:"registry");
  script_copyright("Copyright (c) 2010 Greenbone Networks GmbH");
  script_family("IT-Grundschutz-11");
  script_mandatory_keys("Compliance/Launch/GSHB-11", "Tools/Present/wmi");
  script_dependencies("GSHB/GSHB_WMI_EFS.nasl", "GSHB/GSHB_WMI_OSInfo.nasl", "GSHB/GSHB_SMB_SDDL.nasl", "GSHB/GSHB_WMI_Hibernate.nasl");
  script_require_keys("WMI/WMI_EncrDir", "WMI/WMI_EncrFile", "WMI/WMI_EFSAlgorithmID");

  script_tag(name:"summary", value:"IT-Grundschutz M4.147: Sichere Nutzung von EFS unter Windows (Windows).

  ACHTUNG: Dieser Test wird nicht mehr unterst?tzt. Er wurde ersetzt durch
  den entsprechenden Test der nun permanent and die aktuelle EL angepasst
  wird: OID 1.3.6.1.4.1.25623.1.0.94217

  Diese Pr?fung bezieht sich auf die 11. Erg?nzungslieferung (11. EL) des IT-
  Grundschutz. Die detaillierte Beschreibung zu dieser Ma?nahme findet sich unter
  nachfolgendem Verweis. Es ist zu beachten, dass der dortige Text sich immer auf
  die aktuellste Erg?nzungslieferung bezieht. Titel und Inhalt k?nnen sich bei einer
  Aktualisierung ?ndern, allerdings nicht die Kernthematik.

  *********************************ACHTUNG**************************************

  Diese Pr?fung weicht von der offiziellen Erg?nzungslieferung 11 ab.

  Grund:
  Folgende Satz in der M4.147 ist nicht korrekt:
  'Aus diesem Grund sollte der Ruhezustand bei Verwendung von EFS unter
  Windows Versionen vor Windows Vista nicht verwendet werden. Dies ist
  besonders bei Laptops wichtig. Unter Windows Vista kann als Abhilfe die
  Auslagerungsdatei verschl?sselt werden: Computerkonfiguration   Windows
  Einstellungen   Sicherheitseinstellungen   Richtlinien f?r ?ffentlicher
  Schl?ssel   Verschl?sseltes Dateisystem. Klick mit der rechten Maustaste
  und Wahl von Eigenschaften im dann angezeigten Men? aktivieren.'

  Besser m?sste er wie folgt formuliert werden.

  'Aus diesem Grund sollte der Ruhezustand bei Verwendung von EFS nicht
  verwendet werden. Dies ist besonders bei Laptops wichtig. Ab der Version
  Windows Vista kann als Abhilfe die Festplattenverschl?sselung BitLocker
  eingesetzt werden, die auch die Ruhezustandsdatei verschl?sselt.'

  Dieser Fehler wurde von der IT-Grundschutz Koordinierungsstelle
  best?tigt und wird mit der n?chsten Erg?nzungslieferung korrigiert.

  Hinweis:

  Die Ma?nahme ist in EL11 technisch fehlerhaft.
  Der Test f?hrt abweichend von der Ma?nahme den korrekten Test aus.");
  script_tag(name:"deprecated", value:TRUE);
  exit(0);
}

exit(66);
