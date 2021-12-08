require_relative "./lib/modules/figures"

module Jekyll
    class CategoryPage < Liquid::Tag
        def initialize(tag_name, args1, tokens)
            @tokens = tokens
            @args1 = args1
        end

        def render(context)
            if @args1
                Run(@args1)
            else
                puts ("ERROR: n try get args1 returnning null or empty")
            end
        end
    end
end

Liquid::Template.register_tag("rodrigo", Jekyll::CategoryPage)