---
layout: home
title: Home
---

<p><i>{{ site.description }}</i></p>

<br>

<h1>Hello World!</h1>

<p><a href="https://github.com/RamiresOliv/Easy_Jekyll/"><img src="https://circleci.com/gh/RamiresOliv/Easy_Jekyll/tree/Website.svg?style=svg"></a>
<a href="https://github.com/RamiresOliv/Easy_Jekyll/blob/Website/LICENSE"><img src="https://img.shields.io/github/license/RamiresOliv/Easy_Jekyll"></a>
<a href="https://rubygems.org/gems/jekyll"><img src="https://img.shields.io/gem/v/jekyll"></a>
<a href="https://github.com/RamiresOliv/Easy_Jekyll/"><img src="https://img.shields.io/github/checks-status/RamiresOliv/Easy_Jekyll/Website"></a></p>
<br><br>

<h3>Peoples:</h3>
<ul>
{% for member in site.data.people.members %}
  <li>
    {% if member.github == nil %}
<a target="_blank" href="https://twitter.com/{{ member.twitter }}">
      {{ member.name }} </a>
        {% if member.creator == false %} Not Creator {% elsif member.creator == true %} Creator {% endif %}

        {% if member.note != nil %}
            {{ member.note }}
        {% endif %}
    {% elsif member.twitter == nil %}

<a target="_blank" href="https://github.com/{{ member.github }}">
        {{ member.name }} </a>
        {% if member.creator == false %} Not Creator {% elsif member.creator == true %} Creator {% endif %}

        {% if member.note != nil %}
            {{ member.note }}
        {% endif %}
    {% else %}

<p>Invalid value</p>
    {% endif %}

  </li>
{% endfor %}
<small>see the tutorial on how to use <a id="Button" onclick="peoplefileopen()" style="cursor: pointer;">yml and jekyll</a></small>
<small id="ShowCreditsPeople"></small>
</ul>

<br><br>

<b>About from the Template</b>

- Thanks for using the {{ site.title }} <a href="https://github.com/RamiresOliv/Easy_Jekyll">see here</a>
- Okay Start using the <a href="Docs">Docs</a>

<b>Not sure how to get started after starting the server?</b>

<li>See this <a href="Docs/After">document</a> it can help you</li>

<br>

<script>
var peoplefileopenned = false
var sel = document.getElementById("Button").getSelection();
sel.removeAllRanges();

function peoplefileopen() {
if (peoplefileopenned == true) {
peoplefileopenned = false;
document.getElementById("ShowCreditsPeople").innerHTML = ""
} else {
peoplefileopenned = true;
document.getElementById("ShowCreditsPeople").innerHTML = `

<br> yml file:
{% highlight yml %}members:

- name: Gabriel Ramires
  creator: true
  github: gabrielramires
  note: "The best guy forever"

- name: Arthur Ft
  creator: false
  github: ArthurFt
  note: "(Test User)"

- name: Felps
  creator: false
  twitter: feeeelps
  note: "(Test User)"

{% endhighlight %}

index.md file:
<a target="_blank" href="Assets/Images/CodeScreamShoot1.png"><img src="Assets/Images/CodeScreamShoot1.png" alt="Code Scream Shoot (UNLOADED)"></a>
<small>See this <a href="https://gist.github.com/RamiresOliv/22652461638c32cfcb7f138140494800">Code</a> in Github</small>`
}
}

</script>
