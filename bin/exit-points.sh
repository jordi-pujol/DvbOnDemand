#!/bin/sh

#  dvbondemand
#
#  Gets audio/video services from several dvb cards.
#  Starts mumudvb servers on client's request.
#  Stops these servers when idle.
#
#  dvbondemand detects when a service is required and therefore
#  starts mumudvb sessions using an available dvb adapter.
#  In few seconds clients will get the corresponding http video/audio stream.
#  Also, ends the mumudvb server session after client disconnection.
#
#  $Revision: 1.14 $
#
#  Copyright (C) 2023-2023 Jordi Pujol <jordipujolp AT gmail DOT com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3, or (at your option)
#  any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#************************************************************************

EP_Cmd() {
	local msg="${1}" \
		clientIP="${2:-"192.168.45.11"}" \
		ip
	for ip in ${clientIP}; do
		ssh "jpujol@${ip}" \
			"DISPLAY=:0 notify-send --app-name=dvbondemand -t 10000 '${msg}'"
	done
}

OnRequest() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnSelect() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnStart() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnStartFail() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnAvail() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnStop() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnNoCardAvail() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnStatus() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnConnect() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

OnDisconnect() {
	local msg="${1}" \
		clientIP
	shift
	clientIP="${@}"
	EP_Cmd "${msg}" "${clientIP}"
}

:
