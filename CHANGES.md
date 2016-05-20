
## [0.2.4](https://github.com/indigobio/fake-s3/compare/v0.2.3...indigobio:v0.2.4) (2016-02-02)

- test if object is a self before comparing or testing equality
  ([32db7e8](https://github.com/indigobio/fake-s3/commit/32db7e8bf4391c253b86ce6e9aa5546d3864e617))
- add test-unit as a development dependency
  ([3bdc5a3](https://github.com/indigobio/fake-s3/commit/3bdc5a32f1c9d14ab800711a5ea614ba1dfce867))


## [0.2.3](https://github.com/indigobio/fake-s3/compare/v0.2.2...indigobio:v0.2.3) (2016-01-04)

- Test for IP before assuming sub-domain bucket.
  ([3028f47](https://github.com/indigobio/fake-s3/commit/3028f474163979f374442490bda87ca82b871633))


## [0.2.2](https://github.com/indigobio/fake-s3/compare/v0.2.1...indigobio:v0.2.2) (2015-11-17)

- test amazon vs custom metadata getting written into metadata file separately
  ([99b0705](https://github.com/indigobio/fake-s3/commit/99b07056b37e87ef7a4f5b45bfcf75791d148e63))
- store non-custom metadata on PutObject
  ([4e3c66b](https://github.com/indigobio/fake-s3/commit/4e3c66be2513755e7cb2ab544573deda00b4215f))


## [0.2.1](https://github.com/indigobio/fake-s3/compare/v0.2.0...indigobio:v0.2.1) (2015-03-15)

- Add support for multipart uploads
  ([4034897](https://github.com/indigobio/fake-s3/commit/40348971b642e92a92e89c4846201acfd7cccca3))


## [0.2.0](https://github.com/indigobio/fake-s3/compare/v0.1.7...indigobio:v0.2.0) (2015-03-04)

- Amazon authentication: Fix Expect: 100-continue
  ([ef6b51a](https://github.com/indigobio/fake-s3/commit/ef6b51af238595ede91c7cdae4fbe37ba59fdeec))
- support listing buckets by delimiter, with tests
  ([5d6bd51](https://github.com/indigobio/fake-s3/commit/5d6bd51de8aad7b73b0628fd5acc870da4fdeefc))


## [0.1.7](https://github.com/indigobio/fake-s3/compare/v0.1.5...indigobio:v0.1.7) (2015-02-03)

- Added enhanced CORS support. Allows signed URL uploads/retrievals to work. Modified OPTIONS request to emulate the same recommended CORS setup. Modified PUTS request to enable CORS and allows signed uploads to succeed. Modified GET request to allow CORS support for signed get URL requests to work..
  ([39ebb16](https://github.com/indigobio/fake-s3/commit/39ebb163bcd13e7fbbd6d136c07d824eae41efd5))
- Fix FakeS3::FileStore#copy_object: the src object should not be removed
  ([86b3206](https://github.com/indigobio/fake-s3/commit/86b320606444442fe45581a538bf4d44c9c4594c))
- Bind "H" short option to --hostname
  ([2649cc2](https://github.com/indigobio/fake-s3/commit/2649cc26dda4ada8fd04c9301565eb31255d3f73))
- Updating the GET implementation so that the If-None-Match and If-Modified-Since headers are handled.  This is especially useful for clients that want to cache resources, provided they save the ETag or Last-Modified headers in preceding GET requests.
  ([ed7dd96](https://github.com/indigobio/fake-s3/commit/ed7dd96a842794d2efeb4099cd220359f264f385))
- Extract sub second precision value to a constant
  ([2429a9a](https://github.com/indigobio/fake-s3/commit/2429a9aeb67c26933c0e864c86bb03633ff702fb))
- Fix incorrect variable when setting `custom_metadata`
  ([8f13a07](https://github.com/indigobio/fake-s3/commit/8f13a073fd93a596d73774ba803a4356a70a9010))
- initialize the server instance variable outside of Server#serve
  ([cd853d5](https://github.com/indigobio/fake-s3/commit/cd853d5cd64a25da3729ee53ef9ac0a7cc23486c))
- use Kernel.abort instead of puts and exit
  ([7943963](https://github.com/indigobio/fake-s3/commit/79439637e8bfdc7a5684f5a289f331f8eda6159e))
- no need to initialize ssl options to nil before setting them
  ([93e6de9](https://github.com/indigobio/fake-s3/commit/93e6de9ffd9082e99fc14aaef3ecaf6e0c4ee1dd))
- Add command line options to run an HTTPS server
  ([e9ccff5](https://github.com/indigobio/fake-s3/commit/e9ccff5c4f9fef35df8fe441d8634d90991f7afe))
- support for storing & retrieving custom metadata
  ([aebcf3b](https://github.com/indigobio/fake-s3/commit/aebcf3b391835b5fb1faa62599de0101492191dc))
- Don t clobber contents when copying in place
  ([1ded743](https://github.com/indigobio/fake-s3/commit/1ded7436a33c1b5a4e0e8689b227b368c292af55))
- test_store_not_found added to check the case when the client tries to load nonexistent object from bucket.
  ([f70c289](https://github.com/indigobio/fake-s3/commit/f70c28924cf8f9d3e923ab704abdec19b9bb7dbc))
- FIX response body when S3 object is not found.
  ([7a3ffb7](https://github.com/indigobio/fake-s3/commit/7a3ffb75a2b925dbff26409e241545ef2decf033))
- Return CopyObjectResult
  ([bda7469](https://github.com/indigobio/fake-s3/commit/bda74695537f9057fcd17e3ac154c4f3819a8b88))
- Date formatting compatibility fixes
  ([3e2f69e](https://github.com/indigobio/fake-s3/commit/3e2f69e846e4afbba3a3bd09b79439c328040263))
- add bucket in post reply
  ([a7834f6](https://github.com/indigobio/fake-s3/commit/a7834f69be23ed9c0618d6071acfa4b273e3f526))
- reply to post with reasonable host
  ([2c34861](https://github.com/indigobio/fake-s3/commit/2c348611d1e13a47a3a1f631831efc1c35cfa7f2))
- update to current master and fix argument order in assert_match
  ([534fa22](https://github.com/indigobio/fake-s3/commit/534fa227b25acd846a1076ffb279793879a78373))
- remove extraneous puts and strip whitespace from start of xml response
  ([7e1d900](https://github.com/indigobio/fake-s3/commit/7e1d9009da71d26ad1e02853cf9f838bf346172f))
- basic post support
  ([ca42dca](https://github.com/indigobio/fake-s3/commit/ca42dcab93b1e9b1b18366af9e8187dc53cd429b))
- test/botocmd.py - (idempotently) create bucket instead of relying on its existence
  ([945d55a](https://github.com/indigobio/fake-s3/commit/945d55a672a6458b6e3c5724299fbefca2649951))
- The Java client is sensitive to the case of the ETag header name.
  ([01b9fb5](https://github.com/indigobio/fake-s3/commit/01b9fb55ed1d54704505d45254f5e89e32e6d758))
- Fix LS_BUCKET
  ([7b15ffc](https://github.com/indigobio/fake-s3/commit/7b15ffc8ff01e80692ea87d361232dc33c175346))
- Updated unit tests for ruby 2.0
  ([be95e3d](https://github.com/indigobio/fake-s3/commit/be95e3df1a3f37529c7b44a2811e785b7c29d057))
- adding ./lib to $:
  ([1aec634](https://github.com/indigobio/fake-s3/commit/1aec634f2e5969d56446073bba130d20b6dec071))
- replaced source :ruby gems by 'https://rubygems.org'
  ([36abf95](https://github.com/indigobio/fake-s3/commit/36abf954c5f913284e2df0496fb96a041f8c9d95))
- updates to provide support for Size and LastModified properties
  ([574c400](https://github.com/indigobio/fake-s3/commit/574c400e4c28570fe4fad01127aa391c092bc72f))
- [ref issue 14] tweak to Etag in headers to include doublequotes.
  ([898dde9](https://github.com/indigobio/fake-s3/commit/898dde95dc329ffa2db1a86ea37ee1d23ed53ea3))
- Fix can't modify frozen Thor::CoreExt::HashWithIndifferentAccess
  ([b19de46](https://github.com/indigobio/fake-s3/commit/b19de46b05bbd581428d703572dfcc2954e6711e))
- Support binding to a specific address
  ([074e21b](https://github.com/indigobio/fake-s3/commit/074e21bce534dfa25baab9c1fb82a86f9bdcf4b3))
- Add Last-Modified header for GET/HEAD
  ([50de62f](https://github.com/indigobio/fake-s3/commit/50de62f355ca981bf0cbdc04d2a4f1d29e3c5246))


## [0.1.5](https://github.com/indigobio/fake-s3/compare/v0.1.4...indigobio:v0.1.5) (2012-04-20)

- load path via bundler in test
  ([3ff0f80](https://github.com/indigobio/fake-s3/commit/3ff0f803fd947cd18911774656057a5916cb9d81))
- test is the default task for rake
  ([f220213](https://github.com/indigobio/fake-s3/commit/f2202135909fcb39b95f6e4bfab96a2f7bf6fc1e))
- don't mess with the load path
  ([868ab33](https://github.com/indigobio/fake-s3/commit/868ab33f9786e9faabaaef23348c95ff052190e4))
- autodetect that s3cmd is not installed
  ([d061f3c](https://github.com/indigobio/fake-s3/commit/d061f3cc769e44f46a7715fb7bdd8158a3e0b935))
- fix yaml interactions for ruby 1.9.3
  ([ba5e528](https://github.com/indigobio/fake-s3/commit/ba5e52852c04b1a2390c3b46fd5090ed8ce65b12))
- rake is a development dependency
  ([48789b5](https://github.com/indigobio/fake-s3/commit/48789b563a802b92c79760b3067b885700820476))
- Added MIT LICENSE file
  ([9781528](https://github.com/indigobio/fake-s3/commit/97815282732075c8cb37475377166b0f804f9862))
- Fixes Issue #2 by updating two test cases, thanks @aruld
  ([84cba26](https://github.com/indigobio/fake-s3/commit/84cba26a8643eaa6030627a34c2f7718c9b108da))


## [0.1.4](https://github.com/indigobio/fake-s3/compare/v0.1.3...indigobio:v0.1.4) (2012-04-17)

- File Store builds a bucket if it doesn't exist
  ([4706d14](https://github.com/indigobio/fake-s3/commit/4706d1459b7f61d1694df63e3888252759a15b24))


## [0.1.3](https://github.com/indigobio/fake-s3/compare/v0.1.2...indigobio:v0.1.3) (2012-04-17)

- Removed debug19 as a dependency
  ([1e80c1a](https://github.com/indigobio/fake-s3/commit/1e80c1addb559310f0219a7d8869d2c84ef56a56))


## [0.1.2](https://github.com/indigobio/fake-s3/compare/v0.1.1...indigobio:v0.1.2) (2012-04-16)

- Fix Bucket Deletion and Hashing
  ([da366eb](https://github.com/indigobio/fake-s3/commit/da366eb90c09420dac1713bd7fe60bd9ea63180b))
- Updated Bucket Deletion code
  ([95b0c74](https://github.com/indigobio/fake-s3/commit/95b0c749665ff561428a98f4d96e350cb2fd4bcd))


## [0.1.1](https://github.com/indigobio/fake-s3/compare/v0.1.0...indigobio:v0.1.1) (2012-04-16)

- Support for Delete Object, and list with markers/prefixes
  ([4ce8219](https://github.com/indigobio/fake-s3/commit/4ce8219b419170c9c62d76b1650d80f4a6201321))


## [0.1.0](https://github.com/indigobio/fake-s3/compare/b00db5d1e4211a064be999a0110440cfdf708001...indigobio:v0.1.0) (2012-04-13)

- Rename Shuck codebase to FakeS3
  ([bb35f39](https://github.com/indigobio/fake-s3/commit/bb35f3902a33b9c6d017faa255fa2986ba5e8bff))

