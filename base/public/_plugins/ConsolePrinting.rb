module Jekyll
    class Console < Liquid::Tag
        @LastMessage = "none msg :)"
        def initialize(tag_name, str, tokens)
            super
            if str == nil or str == ""
                @str = "Nulled, none content__"
            else
                @str = str
            end
        end

        def render(context)
            result = @str.split(/ /, 2)
            if not result[1] == " " or not result[1] == "  " or not result[1] == "" and not @str == "Nulled, none content__"
                if not @LastMessage == result[1] then
                    @LastMessage = result[1]
                    if result[0].downcase == "error" or result[0].downcase == "err"
                    puts "            [31m ERROR: " + result[1] + "[0m"
                    elsif result[0].downcase == "warn"
                    puts "             [93m WARN: " + result[1] + "[0m"
                    else
                        puts "               [32mLOG:[0m " + @str
                    end
                end
            end
        end
    end
end

Liquid::Template.register_tag('console', Jekyll::Console)