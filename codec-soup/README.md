# ITCH and SOUP codecs family (3.11.0)

This project has codecs implementations for the following protocol:
+ ITCH
+ OUCH
+ MoldUDP64

### Codec protocol

Codec handles messages with the `SOUP` or empty protocol during encode/decode

## ITCH

Use the following parameters in codec configuration:
```yaml
codecClassName: com.exactpro.sf.externalapi.codec.impl.ExternalSoupTcpCodecFactory
```

### Implementation configuration
Please, use the following parameter for the codec implementation:
```yaml
parseHeaderAsSeparateMessage: true
```

**parseHeaderAsSeparateMessage** - if set to value of `true` produces ITCH header as a separate message during decoding.

## OUCH

Use the following parameters in codec configuration:
```yaml
codecClassName: com.exactpro.sf.externalapi.codec.impl.ExternalSoupTcpCodecFactory
```

### Implementation configuration
Please, use the following parameter for the codec implementation:
```yaml
parseHeaderAsSeparateMessage: true
```

**parseHeaderAsSeparateMessage** - if set to value of `true` produces OUCH header as a separate message during decoding.

## MoldUDP64

Use the following parameters in codec configuration:
```yaml
codecClassName: com.exactpro.sf.externalapi.codec.impl.ExternalSoupCodecFactory
```

### Implementation configuration
Please, use the following parameter for the codec implementation:
```yaml
parseMessageLengthAsSeparateMessage: true
```

**parseMessageLengthAsSeparateMessage** - if set to value of `true` produces length prefix before each payload part as a separate message during decoding.

# Changes

### 3.10.4
+ Fix decoding of EndOfSession messages in SOUP codec