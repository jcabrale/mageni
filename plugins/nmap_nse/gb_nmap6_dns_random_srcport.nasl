###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap6_dns_random_srcport.nasl 12115 2018-10-26 09:30:41Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script:
# Script: Brandon Enright <bmenrigh@ucsd.edu>\n
# porttest.dns-oarc.net: Duane Wessels <wessels@dns-oarc.net>
#
# NASL-Wrapper: autogenerated
#
# Copyright:
# NSE-Script: The Nmap Security Scanner (http://nmap.org)
# Copyright (C) 2013 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.803532");
  script_version("$Revision: 12115 $");
  script_tag(name:"cvss_base", value:"6.4");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:P/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-10-26 11:30:41 +0200 (Fri, 26 Oct 2018) $");
  script_tag(name:"creation_date", value:"2013-02-28 19:00:21 +0530 (Thu, 28 Feb 2013)");
  script_name("Nmap NSE 6.01: dns-random-srcport");
  script_category(ACT_ATTACK);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE");
  script_dependencies("nmap_nse.nasl", "dns_server.nasl");
  script_require_udp_ports("Services/udp/domain", 53);
  script_mandatory_keys("Tools/Present/nmap6.01", "Tools/Launch/nmap_nse");

  script_xref(name:"URL", value:"https://www.dns-oarc.net/oarc/services/porttest");

  script_tag(name:"summary", value:"Checks a DNS server for the predictable-port recursion vulnerability. Predictable source ports can
make a DNS server vulnerable to cache poisoning attacks (see CVE-2008-1447).

The script works by querying porttest.dns-oarc.net (see references).  Be aware that any targets against which this script is run will
be sent to and potentially recorded by one or more DNS servers and the porttest server. In addition
your IP address will be sent along with the porttest query to the DNS server running on the target.");

  script_tag(name:"solution_type", value:"Mitigation");

  exit(0);
}

# The corresponding NSE script doesn't belong to the 'safe' category
if (safe_checks()) exit(0);

port = get_kb_item("Services/udp/domain");
if(!port) port = 53;
if(!get_udp_port_state(port)) exit(0);

# nb: The NSE script is only supporting UDP...
argv = make_list("nmap", "-sU", "--script=dns-random-srcport.nse", "-p", port, get_host_ip());

if(TARGET_IS_IPV6())
  argv = make_list(argv, "-6");

timing_policy = get_kb_item("Tools/nmap/timing_policy");
if(timing_policy =~ '^-T[0-5]$')
  argv = make_list(argv, timing_policy);

source_iface = get_preference("source_iface");
if(source_iface =~ '^[0-9a-zA-Z:_]+$') {
  argv = make_list(argv, "-e");
  argv = make_list(argv, source_iface);
}

res = pread(cmd:"nmap", argv:argv);

if(res)
{
  foreach line (split(res))
  {
    if(ereg(pattern:"^\|",string:line)) {
      result +=  substr(chomp(line),2) + '\n';
    }

    error = eregmatch(string:line, pattern:"^nmap: (.*)$");
    if (error) {
      msg = string('Nmap command failed with following error message:\n', line);
      log_message(data : msg, port:port);
    }
  }

  if("dns-random-srcport" >< result) {
    msg = string('Result found by Nmap Security Scanner (dns-random-srcport.nse) ',
                'http://nmap.org:\n\n', result);
    security_message(data : msg, port:port);
  }
}
else
{
  msg = string('Nmap command failed entirely:\n', 'nmap ', argv);
  log_message(data: msg, port:port);
}