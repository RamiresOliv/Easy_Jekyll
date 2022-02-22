---
permalink: Docs/folders/plugins_folder
layout: default
---

<h1>Folder _plugins:</h1>

This folder created for put customs Plugins in Ruby from Jekyll exemple create a "Tag", "Block" or "filter"

Exemple from a Tag Plugin:

```rb
module Jekyll
    class My_Custom_Tag < Liquid::Tag

        def initialize(tag_name, name_arg, tokens)
            super
            @name = name_arg
        end

        def render(context)
            puts "Start Up! on #{Time.now} and Hello #{@name}"
        end
    end
end

Liquid::Template.register_tag('My_Custom_Name', Jekyll::My_Custom_Tag)
```

from call the new tag like this its gona like this: <br>
{% raw %}
`{% My_Custom_Name World %}`
{% endraw %}

If all has been successfully executed this gona appear in the console:<br>
<a href="{{site.url}}/Assets/Images/TagstartupImg.png"><img src="{{site.url}}/Assets/Images/TagstartupImg.png" alt="Demonstration Not Loadded"></a>

<h3>Anothers Exemples:</h3>

Block Exemple: <br>
{% raw %}
`{% my_custom_block %} [content or a code] {% endmy_custom_block %}`
{% endraw %}

Filter Exemple: <br>
{% raw %}
`{% tag_exemple | my_custom_filter args1:Hello args2:World %}`
{% endraw %}

<br><br><br>

(if you add files in this directory not problems)

if you nor understant the directory "\_plugins" you can create custom Tags, Blocks or Filters
