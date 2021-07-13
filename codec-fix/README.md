# FIX codec (3.8.1)

This codec can be used for decoding and encoding messages via FIX protocol

## Configuration

### Codec factory

To use the FIX codec you will need to specify the following codec factory:
**com.exactpro.sf.externalapi.codec.impl.ExternalFixCodecFactory**

### Implementation parameters
Configuration example. All parameters have their logical default values.
```yaml
verifyMessageStructure: true
decodeByDictionary: true
depersonalizationIncomingMessages: false
fieldConverterClassName: com.exactpro.sf.services.fix.FixFieldConverter
removeTrailingZeros: false
```

By default, FIX codec implementation expects that tags will be separated by _SOH_ (like a regular FIX message). However, if messages you want to decode/encode have a different field separator you can set the custom separator using the **fieldSeparator** parameter. Example,
```yaml
fieldSeparator: '|'
```

#### verifyMessageStructure

If the option is true, then the internal codec verifies structure of incoming messages by the configured dictionary.
 The verification feature requires the `decode by dictionary` to be enabled and the `depersonalization incoming messages` to be disabled.

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
	
#### includeMilliseconds

Determines if milliseconds should be added to date-time / time fields during encoding.
	
#### includeMicroseconds

Determines if microseconds should be added to date-time / time fields during encoding.

#### includeNanoseconds

Determines if nanoseconds should be added to date-time / time fields during encoding

## Release notes

+ 3.8.1
  + Added settings for encoding fractions of seconds.

+ 3.2.1
  + Puts the BeginString(8) field during encode. The value to set is determined from the dictionary namespace.
  + Verifies a message by the configured dictionary during encoding.

+ 3.2.0
  + Added the 'verify message structure' option, default value is set to 'true'.