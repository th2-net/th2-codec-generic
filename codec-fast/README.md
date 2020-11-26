# FAST codec

This codec can be used for decoding and encoding messages in FAST protocol

## Configuration

### Codec factory

To use the FAST codec you will need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalFastCodecFactory**

### Implementation parameters
Configuration example. All parameters have their logical default values.
```yaml
---
skipInitialByteAmount: 0
```

#### skipInitialByteAmount
The number of bytes that should be skipped before decoding messages from RawMessageBatch. _Default value is 0._