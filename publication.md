---
layout: page
title: Publication
permalink: /publication/
---


<div class="listing">
{% for year in site.data.papers %}
  <h2 class="blogyear">{{year[0]}}</h2>

    {% for paper in year[1] %}
            <div class="item" style="margin-bottom: 5px;">
            <span class="project-tagline"><b>[{{paper.idx}}]</b> {{ paper.authors }}. "{{ paper.title }}" <em>{{ paper.venue }}</em>, {{paper.status}}</span>
            
            {% if paper.remark%}
                (<span class="project-tagline"><b>{{ paper.remark }}</b></span>)
            {% endif %}
            {% if paper.pdf%}
                <span class="pull-right"> <a href="{{ site.url }}/{{ paper.pdf }}"><b>[PDF]</b></a></span>
            {% endif %}
    {% endfor %}
    <br/>
{% endfor %}

</div>
