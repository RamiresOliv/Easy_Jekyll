---
layout: home
title: Home
---

<p><i>{{ site.description }}</i></p>

<br>

<h1>Hello World!</h1>

<b>About Websites</b>

- Thanks for using the Jekyll Template <a href="https://github.com/gabrielramires/Jekyll_Template">see here</a>
- Okay Start using the <a href="Docs">Docs/GettingStart</a>

<b>Not sure how to get started after starting the server?</b>

<li>See this <a href="Docs/Beginning">document</a> it can help you</li>

<br>

<h3>Peoples:</h3>
<ul>
{% for member in site.data.people.members %}
  <li>
    {% if member.github == nil %}
    <a target="_blank" href="https://twitter.com/{{ member.twitter }}">
      {{ member.name }} </a>
        {% if member.creator == false %} Not Creator {% elsif member.creator == true %} Valid Creator {% else %} Creator its null! {% endif %}

        {% if member.note == nil %}
        idk
        {% else %}
            {{ member.note }}
        {% endif %}
    {% elsif member.twitter == nil %}
    <a target="_blank" href="https://github.com/{{ member.github }}">
        {{ member.name }} </a>
        {% if member.creator == false %} Not Creator {% elsif member.creator == true %} Valid Creator {% else %} Creator its null! {% endif %}
        {{ member.note }}
    {% else %}
    <p>Invalid value</p>
    {% endif %}

  </li>
{% endfor %}
<small>see the tutorial on how to use <a id="Button" onclick="peoplefileopen()" style="cursor: pointer;">yml and jekyll</a></small>
<small id="ShowCreditsPeople"></small>
</ul>

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
            {% highlight yml %}members:
    - name: Gabriel Ramires
      creator: true
      github: gabrielramires

    - name: Arthur Ft
      creator: false
      github: ArthurFt
      note: "(Test User)"{% endhighlight %}
    
    <a target="_blank" href="Assets/Images/CodeScreamShoot1.png"><img src="Assets/Images/CodeScreamShoot1.png" alt="Code Scream Shoot (UNLOADED)"></a>
    <small>See this <a href="https://gist.github.com/gabrielramires/22652461638c32cfcb7f138140494800">Code</a> in Github</small>`

            
        }
    }
</script>
