module Jekyll
    class Script_Block < Liquid::Block
        def render(context)
            "<script id='script_block_jekyll'> #{super} </script>"
        end
    end
end

Liquid::Template.register_tag("script", Jekyll::Script_Block)