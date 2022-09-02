# General codecs (3.11.0)

This repository contains the build scripts for general codecs:
+ [fix](codec-fix/README.md)
+ [itch](codec-itch/README.md)
+ [fast](codec-fast/README.md)
+ [ntg (native)](codec-ntg/README.md)

You can find the available parameters for each codec in each README file, inside codecs' folders

If you need to modify some parameters, please, change only the parameters that you will need.

_Do not specify default parameters if you don't want to override them_ (just because it doesn't make any sense to duplicate the configuration).

# Changes

### 3.11.0

+ Update base image version to 3.14.0
  + Codec handles messages with its protocol or empty during encode/decode
  + The sailfish-core library update from 3.2.1748 to 3.2.1776
+ Update sailfish version for codec to 3.2.1881

### 3.10.5

+ Update sailfish version to 3.2.1860
  + Various fixes for specific conn types

### 3.10.4

+ Update base image version to 3.12.3
  + Correct default value for event notification parameters
  + Add box name into root event name
  + Fix problem with filtering by `message_type` for MQ pins
+ Fix problem with FIX codec when it is unable to decode the message
+ Migrated `sailfish-core` from `3.2.1741` to `3.2.1748`
  + Fix decoding of EndOfSession messages in SOUP codec

### 3.10.3

+ Correct validation for FIX protocol (did throw an NPE in case there was no MsgType field)

### 3.10.2

+ Update base image from 3.12.0 to 3.12.2
  + Add event publication in case the decoding did not produce any result for a message (the `th2-error-message` is published in this case)

### 3.10.1

+ Update Sailfish version to 3.2.1684

## 3.10.0
+ Update base image version to 3.12.0
+ Update Sailfish services versions from `3.2.1622` to `3.2.1674`

## 3.9.0
+ Update base image version to 3.11.0 (fix behavior for decoding `BigDecimal` fields)

## 3.8.1
+ Update version sailfish-core to support the new settings of codec-fix.

## 3.8.0
+ Disable waiting for connection recovery when closing the `SubscribeMonitor`

## 3.7.0
+ Set message protocol of encoded/decoded messages according to used codec

## 3.6.1
+ Added extraction of messages from EvolutionBatch when decoding RawMessages. This is necessary if evolutionSupportEnabled mode is set to true - Sailfish codecs package the decoding results in EvolutionBatch.

## 3.6.0
+ Added codec-soup
+ Reading dictionary from new directory (`var/th2/config/directory`)

## 3.5.0
+ optimized converter Value.SIMPLE_VALUE to Java Class
+ removed method call MessageWrapper.cloneMessage to improve performance
+ update common library to 3.14.0
+ use release version for sailfish-core
+ copy properties from th2 proto Message to the Sailfish IMessage when converting
    
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
