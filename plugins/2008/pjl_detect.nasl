###############################################################################
# OpenVAS Vulnerability Test
# $Id: pjl_detect.nasl 6524 2017-07-05 03:19:48Z ckuersteiner $
#
# Printer Job Language (PJL) Detection
#
# Authors:
# Michel Arboi <arboi@alussinan.org>
#
# Copyright:
# Copyright (C) 2007 Michel Arboi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# as published by the Free Software Foundation
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
  script_oid("1.3.6.1.4.1.25623.1.0.312699");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_version("$Revision: 6524 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-05 05:19:48 +0200 (Wed, 05 Jul 2017) $");
  script_tag(name:"creation_date", value:"2008-10-24 23:33:44 +0200 (Fri, 24 Oct 2008)");
  script_tag(name:"cvss_base", value:"0.0");
  script_name("Printer Job Language (PJL) Detection");
  script_category(ACT_GATHER_INFO);
  script_family("Service detection");
  script_copyright("This script is Copyright (C) 2007 Michel Arboi");
  script_dependencies("find_service.nasl");
  script_require_ports("Services/PJL", 9100 );

  script_xref(name:"URL", value:"http://www.maths.usyd.edu.au/u/psz/ps.html");
  script_xref(name:"URL", value:"http://h20000.www2.hp.com/bizsupport/TechSupport/Document.jsp?objectID=bpl04568");
  script_xref(name:"URL", value:"http://h20000.www2.hp.com/bc/docs/support/SupportManual/bpl13208/bpl13208.pdf");
  script_xref(name:"URL", value:"http://h20000.www2.hp.com/bc/docs/support/SupportManual/bpl13207/bpl13207.pdf");

  script_tag(name:"summary", value:"The remote service uses the PJL (Printer Job Language) protocol and
  answered to a HP PJL request.

  This is indicates the remote device is probably a printer running JetDirect.

  Through PJL, users can submit printing jobs, transfer files to or from the printers, change some settings, etc...");

  script_tag(name:"qod_type", value:"remote_banner");

  exit(0);
}

include("misc_func.inc");

port = get_kb_item("Services/PJL");
if (!port)
  port = 9100;

# PJL ports get the Hex banner set to "aeaeaeaeae" in register_all_pjl_ports()
if( hexstr( get_unknown_banner( port:port, dontfetch:TRUE ) ) == "aeaeaeaeae" ) {
  s = open_sock_tcp( port );
  if( s ) {
    send( socket:s, data:'\x1b%-12345X@PJL INFO ID\r\n\x1b%-12345X\r\n' );
    r = recv( socket:s, length:1024 );
    if( ! isnull( r ) && '@PJL INFO ID\r\n' >< r ) {
      lines = split( r, keep:FALSE );
      if( max_index( lines ) >= 1 && strlen( lines[1] ) > 0 ) {
        info = ereg_replace( string:lines[1], pattern:'^ *"(.*)" *$', replace: "\1" );
        if( strlen( info ) == 0 ) info = lines[1];
        d = strcat( 'The device INFO ID is:\n', info );
      } else {
        d = "";
      }
      log_message( port:port, data:d );
      register_service( port:port, proto:'jetdirect' );
      set_kb_item( name:'devices/hp_printer', value:TRUE );
    }
    close( s );
  }
}

exit( 0 );
