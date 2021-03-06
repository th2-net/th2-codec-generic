# ITCH codec

This codec can be used for decoding and encoding messages via ITCH protocol

## Configuration

### Codec factory

To use the ITCH codec you will need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalItchCodecFactory**

### Implementation parameters
Configuration example. All parameters have their logical default values.
```yaml
---
msgLength: 1
evolutionaryOutput: true
wrapMessages: false
```

#### msgLength

It specifies the size of the field which contains the length of the following payload (message_header + [**payload_length** + payload] * _n_).
The supported values are 1 and 2.

#### wrapMessages

If set to value of `true` all of the decoded messages will be wrapped to the special message.
Otherwise, the decoded messages will be returned without wrapping them.