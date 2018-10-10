---
layout: page
title: Publication
permalink: /publication/
---

<section class="section projects-section">
    <div class="intro">
        <p class="section-title">Journal</p>
    </div><!--//intro-->
    {% assign len = site.data.journals | size | plus : 1  %} 
    {% for journal in site.data.journals %}
    {% assign idx = forloop.index %}
    {% assign idx = len | minus: forloop.index %}
    <div class="item">
        <span class="project-tagline">[{{idx}}] {{ journal.authors }}. "{{ journal.title }}" <em>{{ journal.venue }}</em>, {{ journal.year }}</span>
        {% if journal.remark%}
            (<span class="project-tagline"><b>{{ journal.remark }}</b></span>)
        {% endif %}
        {% if journal.pdf%}
            <span class="pull-right"> <a href="{{ site.url }}/{{ journal.pdf }}"><b>[PDF]</b></a></span>
        {% endif %}

    </div>
    {% endfor %}

    <div class="intro">
            <p class="section-title">Conference</p>
    </div>
    {% assign len = site.data.conferences | size | plus : 1  %} 
    {% for paper in site.data.conferences %}
    {% assign idx = forloop.index %}
    {% assign idx = len | minus: forloop.index %}
    <div class="item">
            <span class="project-tagline">[{{idx}}] {{ paper.authors }}. "{{ paper.title }}" <em>{{ paper.venue }}</em>, {{ paper.year }}</span>
            {% if paper.remark%}
                (<span class="project-tagline"><b>{{ paper.remark }}</b></span>)
            {% endif %}
            {% if paper.pdf%}
            <span class="pull-right"> <a href="{{ site.url }}/{{ paper.pdf }}"><b>[PDF]</b></a></span>
            {% endif %}
    </div>
    {% endfor %}
   
</section><!--//section-->