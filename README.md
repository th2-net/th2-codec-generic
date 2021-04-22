# General codecs (3.4.1)

This repository contains the build scripts for general codecs:
+ [fix](codec-fix/README.md)
+ [itch](codec-itch/README.md)
+ [fast](codec-fast/README.md)
+ [ntg (native)](codec-ntg/README.md)

You can find the available parameters for each codec in each README file, inside codecs' folders

If you need to modify some parameters, please, change only the parameters that you will need.

_Do not specify default parameters if you don't want to override them_ (just because it doesn't make any sense to duplicate the configuration).

# Changes

## 3.4.1

+ removed gRPC event loop handling
+ fixed dictionary reading

## 3.4.0

+ reads dictionaries from the /var/th2/config/dictionary folder.
+ uses mq_router, grpc_router, cradle_manager optional JSON configs from the /var/th2/config folder
+ tries to load log4j.properties files from sources in order: '/var/th2/config', '/home/etc', configured path via cmd, default configuration
+ update Cradle version. Introduce async API for storing events

## 3.3.1

+ Update th2-codec-sailfish to fix problem with message names

## 3.3.0

+ Checks message structure by the configured dictionary during encode.

## 3.2.0

+ Validates configured dictionaries during initialization

## 3.1.1

+ Allow the codec to produce more than one message during the decoding a raw message