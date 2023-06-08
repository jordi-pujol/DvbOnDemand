# DvbOnDemand

Gets audio/video services from several dvb cards.

Starts mumudvb servers on client's request.

Stops these servers when idle.

dvbondemand detects when a service is required and therefore
starts mumudvb sessions using an available dvb adapter.

In few seconds clients will get the corresponding http video/audio stream.

Also, ends the mumudvb server session after client disconnection.

## Installation
On Debian systems it's easy, download the deb package included in every release and install using dpkg.
Also take care of installing all dependencies.
## MuMuDVB configurations
dvbondemand is intended only for http unicast, multicast must be disabled.
Each configuration file must include the options:


Create a file in the directory /etc/mumudvb for every known multiplexer that we want to use.

Configuration files are named like this:
- dvbt_*.conf
- dvbc_*.conf
- dvbs_*.conf
- atsc_*.conf

Names start with four letters corresponding to the card type that is intended for.

dvbondemand will run mumudvb setting a configuration with a name that matches the card type.

When dvbondemand starts reads the names of these configuration files and saves the names in memory.
Therefore enables one IP port to receive requests for each configuration/multiplexer.

Also creates a list of available multiplexers and their IP port.

Configuration examples.

/etc/mumudvb/dvbt_538.conf

#The Transponder frequency
freq=538000
port_http=4538
card=0
tuner=0
timeout_no_diff=15
#---------- AUTOCONFIGURATION -----------
#We want the full autoconfiguration (ie we discover the channels and their pids)
autoconfiguration=full
#Do we want to add the radios to the list of channels (default 0=NO) ?
autoconf_radios=1
#--------- NETWORKING --------------
unicast=1
multicast_ipv4=0
multicast_ipv6=0
#--------- SAP ANNOUNCES --------------
sap=0
