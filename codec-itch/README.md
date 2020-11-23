# ITCH codec

This codec can be used for decoding and encoding message in ITCH protocol

## Configuration

### Codec factory

To use the following codec you need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalItchCodecFactory**

### Implementation parameters
Configuration example. All parameters have their reasonable default values.
```yaml
---
msgLengthFieldSize: 1
```

#### msgLengthFieldSize

Specifies the size of the field that contains the length of the following payload (message_header + [**payload_length** + payload] * _n_).
The supported values are 1 and 2.