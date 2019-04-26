# TWILIO-TRANSCRIPTIONS

## Useful Links

- [How to pass environment variables to whisk functions](https://github.com/serverless/serverless-openwhisk/issues/64)
- [How to use environment variables in serverless.yml](https://serverless.com/framework/docs/providers/openwhisk/guide/variables/)
- [NPM Cloudant module](hhttps://www.npmjs.com/package/@cloudant/cloudant)
- [How to generate the API KEY and PASSWORD to connect to Claudant](https://www.npmjs.com/package/@cloudant/cloudant#authorization-and-cloudant-api-keys)

## Sample Runner

This repository contains a sample runner that automatically perform phone calls to `twilio` or `watson` handled
numbers. This samples are hard-coded on the `sample_runner/script.rb` file on a hash with the following structure:

```rb
samples = {
  tic5hw: {
    sample_1: {
      language: 'en-US',
      file_name: 'TIC5HW_1-DAVID-with-silent.mp3',
      file_id: 'https://drive.google.com/open?id=1zTbmruAso6tsWxCVgzKyrB9MaM-WBf2a'
    },
    sample_2: {
      ...
    }
  },
  other_reference: {
    ...
  }
}
```

### Setup runner

```bash
> bundle install
> export TWILIO_ACCOUNT_ID=<account_sid> TWILIO_ACCOUNT_TOKER=<account_token>
```

### Run

The runner expects the target provider (`watson` or `twilio`), a sample name (for instance, `tic5hw`) and optinially a language (e.g. `en-US`).

```bash
> bundle exec ruby script.rb twilio TP1549 en-US
```
