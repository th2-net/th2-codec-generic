# NTG codec (3.11.0)

This codec can be used for decoding and encoding messages via NTG (Native) protocol.

## Configuration

### Codec factory

To use the NTG codec you will need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalNtgCodecFactory**

### Implementation parameters
This codec doesn't have any specific configuration. All the decoding/encoding relies on the specified dictionary.

## Release notes

### 3.11.0
  + Update sailfish version to `3.3.54`
  + Update base image from to 3.14.0

### 3.10.5
+ Update
    + Add check scale for float and double types during encode
    + Increased accuracy of division double/float during decoding in ntg codec