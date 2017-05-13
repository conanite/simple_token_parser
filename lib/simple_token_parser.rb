require "simple_token_parser/version"

module SimpleTokenParser
  def basic_tokens
    terms = []
    term = ""
    state = :normal
    self.each_char do |c|
      case state
      when :normal
        case c
        when ' '
          terms << term unless term.to_s.strip == ''
          term = ""
        when '"'
          terms << term unless term.to_s.strip == ''
          term = ""
          state = :quoting
        else
          term += c
        end
      when :quoting
        case c
        when '"'
          terms << term
          term = ""
          state = :normal
        else
          term += c
        end
      end
    end
    terms << term unless term.to_s.strip == ''
    terms
  end

  def self.install klass
    klass.send :include, SimpleTokenParser
  end
end
