# General codecs (3.3.0)

This repository contains the build scripts for general codecs:
+ [fix](codec-fix/README.md)
+ [itch](codec-itch/README.md)
+ [fast](codec-fast/README.md)
+ [ntg (native)](codec-ntg/README.md)

You can find the available parameters for each codec in each README file, inside codecs' folders

If you need to modify some parameters, please, change only the parameters that you will need.

_Do not specify default parameters if you don't want to override them_ (just because it doesn't make any sense to duplicate the configuration).

# Changes

## 3.3.0

+ Checks message structure by the configured dictionary during encode.

## 3.2.0

+ Validates configured dictionaries during initialization

## 3.1.1

+ Allow the codec to produce more than one message during the decoding a raw message