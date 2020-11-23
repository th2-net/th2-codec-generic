# FAST codec

This codec can be used for decoding and encoding message in FAST protocol

## Configuration

### Codec factory

To use the following codec you need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalFastCodecFactory**

### Implementation parameters
Configuration example. All parameters have their default values.
```yaml
---
skipInitialByteAmount: 0
```

#### skipInitialByteAmount
The number of bytes that should be skipped before decoding messages from RawMessageBatch. _Default value is 0._