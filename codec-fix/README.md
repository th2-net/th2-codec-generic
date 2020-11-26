# FIX codec

This codec can be used for decoding and encoding messages in FIX protocol

## Configuration

### Codec factory

To use the FIX codec you will need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalFixCodecFactory**

### Implementation parameters
Configuration example. All parameters have their logical default values.
```yaml
decodeByDictionary: true
depersonalizationIncomingMessages: false
fieldConverterClassName: com.exactpro.sf.services.fix.FixFieldConverter
removeTrailingZeros: false
```

#### decodeByDictionary

The dictionary will be used to decode messages. Otherwise, messages will be decoded as flatten structure - no header, trailer or any components and groups
 will be extracted.
 
#### depersonalizationIncomingMessages

The name of the decoded messages will be omitted and replaced with `incoming` name.

#### fieldConverterClassName

The field converter class that will be used for field conversion if `decodeByDictionary` is disabled. Other converter classes are not available at the moment.

#### removeTrailingZeros

Enables removing trailing zeroes for fields that have `java.lang.Double` and `java.math.BigDecimal` types.
E.g. original value: `100`, value after removing trailing zeroes: `1E+2`