# OpenVAS Vulnerability Test
# $Id: cherokee_0_4_7.nasl 9348 2018-04-06 07:01:19Z cfischer $
# Description: Cross-Site Scripting in Cherokee Error Pages
#
# Authors:
# David Maciejak
#
# Copyright:
# Copyright (C) 2004 David Maciejak
# Copyright (C) Tenable Network Security
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# as published by the Free Software Foundation
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.15618");
  script_version("2019-04-11T14:06:24+0000");
  script_tag(name:"last_modification", value:"2019-04-11 14:06:24 +0000 (Thu, 11 Apr 2019)");
  script_tag(name:"creation_date", value:"2005-11-03 14:08:04 +0100 (Thu, 03 Nov 2005)");
  script_cve_id("CVE-2004-2171");
  script_bugtraq_id(9496);
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_name("Cross-Site Scripting in Cherokee Error Pages");
  script_category(ACT_GATHER_INFO);
  script_copyright("This script is Copyright (C) 2004 David Maciejak");
  script_family("Web Servers");
  script_dependencies("gb_get_http_banner.nasl");
  script_mandatory_keys("Cherokee/banner");
  script_require_ports("Services/www", 443);

  script_tag(name:"solution", value:"Upgrade to Cherokee 0.4.8 or newer.");

  script_tag(name:"summary", value:"The remote Cherokee web server is vulnerable to a cross-site scripting issue
  due to lack of sanitization in returned error pages.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"remote_banner");

  exit(0);
}

include("http_func.inc");
include("http_keepalive.inc");

port = get_http_port(default:80);
banner = get_http_banner(port:port);
if(!banner || "Cherokee" >!< banner)
  exit(0);

serv = strstr(banner, "Server");
if(ereg(pattern:"^Server:.*Cherokee/0\.([0-3]\.|4\.[0-7])[^0-9]", string:serv)) {
  url = "/<script>vt-test</script>";
  req = http_get(item:url, port:port);
  res = http_keepalive_send_recv(port:port, data:req);
  if(res =~ "^HTTP/1\.[01] 200" && "<script>foo</script>" >< res ) {
    report = report_vuln_url(port:port, url:url);
    security_message(port:port, data:report);
    exit(0);
  }
  exit(99);
}

exit(0);