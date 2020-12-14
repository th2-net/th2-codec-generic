# FIX codec

This codec can be used for decoding and encoding messages via FIX protocol

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

By default, FIX codec implementation expects that tags will be separated by _SOH_ (like a regular FIX message). However, if messages you want to decode/encode have a different field separator you can set the custom separator using the **fieldSeparator** parameter. Example,
```yaml
fieldSeparator: '|'
```

#### decodeByDictionary

The dictionary will be used to decode messages. Otherwise, messages will be decoded as flatten structure - without header, trailer or any components and groups
 will be extracted.

#### depersonalizationIncomingMessages

The name of the decoded messages which will be omitted and replaced with the `incoming` name.

#### fieldConverterClassName

The field converter class that will be used for field conversion, if the `decodeByDictionary` is disabled. Other converter classes are not available at the moment.

#### removeTrailingZeros

It enables the removal of trailing zeroes for fields that have `java.lang.Double` and `java.math.BigDecimal` types.
E.g. original value: `100`, value after the removal of trailing zeroes: `1E+2`
