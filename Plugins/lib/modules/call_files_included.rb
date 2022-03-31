module Jekyll
    module Call_args
      def Call_args( input, file, args )
        unless input == "call"
            return
        end
"{% include call file=#{file} type=#{args} %} e"
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::Call_args)

# File.exist?(filename)