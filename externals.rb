MxxRu::arch_externals :llhttp_parser do |e|
  e.url 'https://github.com/nodejs/llhttp/archive/refs/tags/release/v9.1.2.tar.gz'

  e.map_dir 'include' => 'dev/nodejs/llhttp'
  e.map_dir 'src' => 'dev/nodejs/llhttp'
end
