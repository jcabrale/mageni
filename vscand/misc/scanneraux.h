/* Copyright (C) 2009-2019 Greenbone Networks GmbH
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 */

/**
 * @file scanneraux.h
 * @brief Auxiliary structures for scanner.
 */

#ifndef _OPENVAS_SCANNERAUX_H
#define _OPENVAS_SCANNERAUX_H

#include <glib.h>
#include "../../libraries/base/nvti.h"
#include "../../libraries/util/kb.h"

struct scan_globals
{
  char *network_targets;
  char *network_scan_status;
  GHashTable *files_translation;
  GHashTable *files_size_translation;
  int global_socket;
  char *scan_id;
};

struct host_info;

struct script_infos
{
  struct scan_globals *globals;
  kb_t key;
  nvti_t *nvti;
  char *oid;
  char *name;
  GHashTable *udp_data;
  struct in6_addr *ip;
  GSList *vhosts;
  int standalone;
  int denial_port;
  int alive;
};
#endif /* not _OPENVAS_SCANNERAUX_H */
