# sexp-ruby - A simple Ruby library for parsing and validating s-expressions
# Copyright (c) 2007-2015 Ingo Ruhnke <grumbel@gmail.com>
#
# This software is provided 'as-is', without any express or implied
# warranty. In no event will the authors be held liable for any damages
# arising from the use of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not
#    claim that you wrote the original software. If you use this software
#    in a product, an acknowledgment in the product documentation would be
#    appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.

require_relative "sexp-ruby/lexer.rb"
require_relative "sexp-ruby/parser.rb"

def SExpr.parse(str, parse_comments = false, parse_whitespace = false)
  lexer = SExpr::Lexer.new(str, parse_comments, parse_whitespace)
  tokens = lexer.tokenize()

  parser = SExpr::Parser.new()
  return parser.parse(tokens)
end

# EOF #
