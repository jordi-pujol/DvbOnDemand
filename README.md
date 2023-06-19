# DvbOnDemand

Gets audio/video services from several dvb cards.

Starts **MuMuDVB** servers on client's request.

Stops these servers when idle.

**DvbOnDemand** detects when a service is required and therefore
starts **MuMuDVB** sessions using an available DVB adapter.

In few seconds clients will get the corresponding http video/audio stream.

Also, ends the **MuMuDVB** server session after clients disconnection.

## Scenario

A network server is directly connected to some DVB cards.
There are cards of type: Terrestrial, Satellite, Cable and/or ATSC.

**MuMuDVB** is installed and several multiplexers have been configured.
Each multiplexer must use one DVB card of the corresponding DVB type.

**DvbOnDemand** reads the configurations and assigns one IP port to each one.

When **DvbOnDemand** detects a network request on a IP port, 
selects an available DVB card of the corresponding type,
creates a temporary configuration,
and starts **MuMuDVB**

After a few seconds **MuMuDVB** is running and makes available
these services.

Several clients may connect to any of the multiplexer services.

When all clients are disconnected, **MuMuDVB** server is idle,
therefore **DvbOnDemand** will terminate the **MuMuDVB** server after a timeout.

## Wiki
For further information please look the **DvbOnDemand** wiki.
