---
layout: default
permalink: Docs/After
---

<h1>What i do now after i execute my Website?</h1>
> Friendly Note: Edit this page for see the tutorial!

<p>You can do all! <br> Relax go explore u can change any thing on the website its really normal <br> Its good you know muth HTML, CSS, JAVASCRIPT and RUBY to starts a good Website</p>
<hr>
<br>

<h1>Editing this page</h1>

<p>Edit this page to see the tutorial! or <a href="tutorial_in_txt.txt">see here</a></p>
<p>from a exemple Edit this page! <br> goto the folder:</p>
`base/public/docs/After.md`

<br> and edits any thing here!

<div id="note_div">
    well lets start with simple?

    for starts good use {{ site.title }} non in this div!
    the "site" its like get infos by the file "_config.yml" like descripition, title, github_username and others
    the "page" its like get infos by the current page! for test use {{ page.name }}

    others like "remove" in the exemple: {{ page.name }} gona return "After.md" but using the tag remove {{ page.name | remove: '.md' }} gona return only "After" you can do so muth codes with this xd

    let me explain aout the ifs and others like that for you use ifs its really easy use: {% if instance == true %} if is true {% else %} if is not true {% endif %} super easy to use

    ATTENTION!: you know ruby?
        if you know you can create your own Tags! in "_plugins"
        see more here: https://jekyllrb.com/docs/plugins/your-first-plugin/

    you can see more tutorials better here:
        https://jekyllrb.com

</div>

<script>document.getElementById("note_div").remove()</script>