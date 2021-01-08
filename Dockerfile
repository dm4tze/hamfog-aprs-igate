FROM registry.hamfog.net/dm4tze/aprs-dxlaprs AS build-env

FROM alpine as aprs-igate

COPY --from=build-env /dxlAPRS/out/udpgate4 /

ENTRYPOINT /udpgate4 -v -s $CALLSIGN -R 0.0.0.0:0:20000#LoRa -R 0.0.0.0:0:20001#FM -g rotate.aprs2.net:14580#m/1,-t/t -p $PASSWORD