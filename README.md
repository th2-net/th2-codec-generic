# General codecs (2.7.0)

This repository contains the build scripts for general codecs:
+ [fix](codec-fix/README.md)
+ [itch](codec-itch/README.md)
+ [fast](codec-fast/README.md)
+ [ntg (native)](codec-ntg/README.md)

You can find the available parameters for each codec in each README file, inside codecs' folders

If you need to modify some parameters, please, change only the parameters that you will need.

_Do not specify default parameters if you don't want to override them_ (just because it doesn't make any sense to duplicate the configuration).

## Release notes

+ 2.7.0
  + Add a new COMBINED `decodeProcessorType` mode. Please, read more in the codec-core [documentation](https://github.com/th2-net/th2-codec-sailfish/tree/version-2#configuration)

+ 2.6.1
  + Resets embedded log4j configuration before configuring from a file

+ 2.6.0
  + Added codec-soup
  + Reading dictionary from new directory (`var/th2/config/directory`)

+ 2.5.1
  + Update th2-codec-sailfish to fix problem with message names

+ 2.5.0
  + Checks message structure by the configured dictionary during encode.

+ 2.4.0
  + Validates configured dictionaries during initialization