# DvbOnDemand

Gets audio/video services from several dvb cards.

Starts MuMuDVB servers on client's request.

Stops these servers when idle.

dvbondemand detects when a service is required and therefore
starts mumudvb sessions using an available dvb adapter.

In few seconds clients will get the corresponding http video/audio stream.

Also, ends the mumudvb server session after client disconnection.
## Scenario
A network server is directly connected to some DVB cards.
There are cards of type: Terrestrial, Satellite, Cable and/or ATSC.

mumudvb is installed and several multiplexers have been configured.
Each multiplexer must use one DVB card of the corresponding DVB type.

dvbondemand reads the configurations and assigns one IP port to each multiplexer.

When the server's network detects input on a IP port, 
selects an availble DVB card of the correspondign type,
creates a temporary configuration,
and starts mumudvb.

After a few seconds mumudvb is running and makes available
these multiplexer services.

Several clients may connect to any of the multiplexer services.

The server is idle when all clients are disconnected,
dvbondemand will terminate the server after the idle timeout.
## Wiki
For further information please look the dvbondemand wiki.
