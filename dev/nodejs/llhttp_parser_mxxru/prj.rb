gem 'Mxx_ru', '>= 1.6.8'

require 'mxx_ru/cpp'

MxxRu::Cpp::lib_target {

	target( 'lib/hodejs_llhttp_parser' )

	include_path( 'nodejs/llhttp_parser/include', MxxRu::Cpp::Target::OPT_UPSPREAD )

	c_sources Dir[ 'nodejs/llhttp_parser/src/*.c' ].map{|d| "../../#{d}"}
}

