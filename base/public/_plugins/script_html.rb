module Jekyll
    class Script_Block < Liquid::Block
        def render(context)
            patch = "Plugins/lib/cache/script_html"
            result = super.gsub("\n",  ";")
            "<script id='script_block_jekyll'> #{result} </script>"
        end
    end
end

Liquid::Template.register_tag("script", Jekyll::Script_Block)