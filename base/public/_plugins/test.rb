module Jekyll
    class My_Custom_Tag < Liquid::Tag

        def initialize(tag_name, name, tokens)
            super
            @name = name
        end

        def render(context)
            puts "Start Up! on #{Time.now} and Hello #{@name}"
        end
    end
end

Liquid::Template.register_tag('My_Custom_Name', Jekyll::My_Custom_Tag)