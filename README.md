# What Is It?
*nodejs_llhttp_mxxru* is an mxxru wrapper for
[nodejs http-parser](https://github.com/nodejs/llhttp) library.

# How To Use

## Prerequisites

To use *nodejs_llhttp_mxxru* it is necessary to have:

* Reasonably modern C compiler (these are doing well: VC14.0, GCC 5.1 or above, clang 3.6 or above);
* [nodejs/llhttp](https://github.com/nodejs/llhttp) 9.2.1 or above.
* [Mxx_ru](https://sourceforge.net/projects/mxxru/) 1.6.11 or above.

## Obtaining

### Cloning of Git Repository

```sh
git clone https://github.com/stiffstream/nodejs_llhttp_mxxru
```

And then:
```sh
cd nodejs_llhttp_mxxru
mxxruexternals
```
to download and extract *nodejs_llhttp_mxxru*'s dependencies.

### MxxRu::externals recipe

For *nodejs_llhttp_mxxru* itself:
```ruby
MxxRu::arch_externals :nodejs_llhttp_mxxru do |e|
  e.url 'https://github.com/Stiffstream/nodejs_llhttp_mxxru/archive/v.0.1.0.tar.gz'

  e.map_dir 'dev/nodejs/llhttp_mxxru' => 'dev/nodejs'
end
```

For [nodejs/http-parser](https://github.com/nodejs/llhttp) dependency:
```ruby
MxxRu::arch_externals :nodejs_http_parser do |e|
  e.url 'https://github.com/nodejs/llhttp/archive/refs/tags/release/v9.1.2.tar.gz'

  e.map_dir 'include' => 'dev/nodejs/llhttp'
  e.map_dir 'src' => 'dev/nodejs/llhttp'
end
~~~~~

## Compilation

Compilation must be performed via Mxx_ru:
```sh
git clone https://github.com/stiffstream/nodejs_llhttp_mxxru
cd nodejs_llhttp_mxxru
mxxruexternals
cd dev
ruby build.rb
```
*NOTE.* It may be necessary to set up `MXX_RU_CPP_TOOLSET` environment variable.

# License

*nodejs_llhttp_mxxru* is distributed under
[BSD-3-Clause](http://spdx.org/licenses/BSD-3-Clause.html) license. See LICENSE
file for more information.

For the license of *nodejs/llhttp* library see license file in
[nodejs/llhttp](https://github.com/nodejs/llhttp) distributive.

