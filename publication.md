---
layout: page
title: Publications
permalink: /publication/
---

<div class="publications-container">

<!-- <div class="publications-header"> -->
    <!-- <h1>Publications</h1> -->
    <!-- <p class="publications-intro">A comprehensive list of my research publications in software engineering and related fields. Publications are categorized by year with detailed information and links to PDFs when available.</p> -->
<!-- </div> -->

<!-- 统计信息已注释掉
<div class="publications-stats">
    <div class="stats-grid">
        <div class="stat-card">
            <div class="stat-number">{{ site.data.papers | size }}</div>
            <div class="stat-label">Years of Research</div>
        </div>
        <div class="stat-card">
            <div class="stat-number">
                {% assign total_papers = 0 %}
                {% for year in site.data.papers %}
                    {% assign total_papers = total_papers | plus: year[1].size %}
                {% endfor %}
                {{ total_papers }}
            </div>
            <div class="stat-label">Total Publications</div>
        </div>
        <div class="stat-card">
            <div class="stat-number">
                {% assign journal_count = 0 %}
                {% for year in site.data.papers %}
                    {% for paper in year[1] %}
                        {% if paper.venue contains 'Transactions' or paper.venue contains 'Journal' or paper.venue contains 'Science' %}
                            {% assign journal_count = journal_count | plus: 1 %}
                        {% endif %}
                    {% endfor %}
                {% endfor %}
                {{ journal_count }}
            </div>
            <div class="stat-label">Journal Papers</div>
        </div>
        <div class="stat-card">
            <div class="stat-number">
                {% assign conference_count = 0 %}
                {% for year in site.data.papers %}
                    {% for paper in year[1] %}
                        {% unless paper.venue contains 'Transactions' or paper.venue contains 'Journal' or paper.venue contains 'Science' %}
                            {% assign conference_count = conference_count | plus: 1 %}
                        {% endunless %}
                    {% endfor %}
                {% endfor %}
                {{ conference_count }}
            </div>
            <div class="stat-label">Conference Papers</div>
        </div>
    </div>
</div>

<div class="ccf-stats-text">
    <h3>CCF A类会议/期刊统计</h3>
    <p>根据中国计算机学会（CCF）推荐国际学术会议和期刊目录，统计在CCF A类顶级会议和期刊上发表的研究成果：</p>
    
    {% assign ccf_a_conference_count = 0 %}
    {% assign ccf_a_journal_count = 0 %}
    {% assign ccf_a_total = 0 %}
    
    {% assign icse_count = 0 %}
    {% assign fse_count = 0 %}
    {% assign ase_count = 0 %}
    {% assign issta_count = 0 %}
    {% assign tosem_count = 0 %}
    {% assign tse_count = 0 %}
    
    {% for year in site.data.papers %}
        {% for paper in year[1] %}
            {% assign venue = paper.venue %}
            
            {% if venue contains 'International Conference on Software Engineering' %}
                {% assign icse_count = icse_count | plus: 1 %}
                {% assign ccf_a_conference_count = ccf_a_conference_count | plus: 1 %}
                {% assign ccf_a_total = ccf_a_total | plus: 1 %}
            {% elsif venue contains 'ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering' %}
                {% assign fse_count = fse_count | plus: 1 %}
                {% assign ccf_a_conference_count = ccf_a_conference_count | plus: 1 %}
                {% assign ccf_a_total = ccf_a_total | plus: 1 %}
            {% elsif venue contains 'International Conference on Automated Software Engineering' %}
                {% assign ase_count = ase_count | plus: 1 %}
                {% assign ccf_a_conference_count = ccf_a_conference_count | plus: 1 %}
                {% assign ccf_a_total = ccf_a_total | plus: 1 %}
            {% elsif venue contains 'International Symposium on Software Testing and Analysis' %}
                {% assign issta_count = issta_count | plus: 1 %}
                {% assign ccf_a_conference_count = ccf_a_conference_count | plus: 1 %}
                {% assign ccf_a_total = ccf_a_total | plus: 1 %}
            {% elsif venue contains 'ACM Transactions on Software Engineering and Methodology' %}
                {% assign tosem_count = tosem_count | plus: 1 %}
                {% assign ccf_a_journal_count = ccf_a_journal_count | plus: 1 %}
                {% assign ccf_a_total = ccf_a_total | plus: 1 %}
            {% elsif venue contains 'IEEE Transactions on Software Engineering' %}
                {% assign tse_count = tse_count | plus: 1 %}
                {% assign ccf_a_journal_count = ccf_a_journal_count | plus: 1 %}
                {% assign ccf_a_total = ccf_a_total | plus: 1 %}
            {% endif %}
        {% endfor %}
    {% endfor %}
    
    <ul>
        <li><strong>CCF A类会议论文：{{ ccf_a_conference_count }}篇</strong>
            <ul>
                {% if icse_count > 0 %}<li>ICSE: {{ icse_count }}篇</li>{% endif %}
                {% if fse_count > 0 %}<li>FSE/ESEC: {{ fse_count }}篇</li>{% endif %}
                {% if ase_count > 0 %}<li>ASE: {{ ase_count }}篇</li>{% endif %}
                {% if issta_count > 0 %}<li>ISSTA: {{ issta_count }}篇</li>{% endif %}
            </ul>
        </li>
        <li><strong>CCF A类期刊论文：{{ ccf_a_journal_count }}篇</strong>
            <ul>
                {% if tosem_count > 0 %}<li>TOSEM: {{ tosem_count }}篇</li>{% endif %}
                {% if tse_count > 0 %}<li>TSE: {{ tse_count }}篇</li>{% endif %}
            </ul>
        </li>
        <li><strong>CCF A类总计：{{ ccf_a_total }}篇</strong>（占全部出版物的 
        {% assign total_papers = 0 %}
        {% for year in site.data.papers %}
            {% assign total_papers = total_papers | plus: year[1].size %}
        {% endfor %}
        {% if total_papers > 0 %}
            {% assign percentage = ccf_a_total | times: 100.0 | divided_by: total_papers | round: 1 %}
            {{ percentage }}%
        {% else %}
            0%
        {% endif %}
        ）</li>
    </ul>
</div>
-->

<div class="publications-navigation">
    <div class="nav-year">
        {% for year in site.data.papers %}
            <a href="#year-{{ year[0] }}" class="year-link">{{ year[0] }}</a>
        {% endfor %}
    </div>
</div>

{% for year in site.data.papers %}
<div class="year-section" id="year-{{ year[0] }}">
    <h2 class="year-header">{{ year[0] }}</h2>
    <div class="year-count">({{ year[1].size }} publications)</div>
    
    <div class="papers-grid">
        {% for paper in year[1] %}
        <div class="paper-card">
            <div class="paper-header">
                <div class="paper-id">{{ paper.idx }}</div>
                <div class="paper-type">
                    {% if paper.venue contains 'Transactions' or paper.venue contains 'Journal' or paper.venue contains 'Science' %}
                        <span class="type-label type-journal">Journal</span>
                    {% elsif paper.venue contains 'Demonstration' or paper.venue contains 'Demo' %}
                        <span class="type-label type-demo">Demo</span>
                    {% elsif paper.venue contains 'Workshop' %}
                        <span class="type-label type-workshop">Workshop</span>
                    {% else %}
                        <span class="type-label type-conference">Conference</span>
                    {% endif %}
                    
                    {% if paper.remark contains 'Distinguished' or paper.remark contains 'Best' %}
                        <span class="type-label type-award">Award</span>
                    {% endif %}
                </div>
            </div>
            
            <div class="paper-title">{{ paper.title }}</div>
            
            <div class="paper-authors">{{ paper.authors }}</div>
            
            <div class="paper-venue">
                <em>{{ paper.venue }}</em>
                <span class="paper-status">{{ paper.status }}</span>
            </div>
            
            {% if paper.remark %}
            <div class="paper-remark">
                <i class="remark-icon">📌</i> {{ paper.remark }}
            </div>
            {% endif %}
            
            <div class="paper-actions">
                {% if paper.pdf %}
                <a href="/{{ paper.pdf }}" class="paper-action-btn" target="_blank">
                    <span class="action-icon">📄</span> PDF
                </a>
                {% endif %}
                <span class="paper-action-btn paper-action-cite" data-title="{{ paper.title }}" data-authors="{{ paper.authors }}" data-venue="{{ paper.venue }}">
                    <span class="action-icon">📋</span> Cite
                </span>
            </div>
        </div>
        {% endfor %}
    </div>
</div>
{% endfor %}

<div class="publications-footer">
    <p><strong>Note:</strong> My name is highlighted in bold in the author lists. Click on PDF links to download full papers when available.</p>
</div>

</div>

<div id="citation-modal" class="modal">
    <div class="modal-content">
        <span class="close-modal">&times;</span>
        <h3>Citation</h3>
        <div id="citation-text"></div>
        <button id="copy-citation" class="copy-btn">Copy to Clipboard</button>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Cite button functionality
    const citeButtons = document.querySelectorAll('.paper-action-cite');
    const modal = document.getElementById('citation-modal');
    const citationText = document.getElementById('citation-text');
    const closeModal = document.querySelector('.close-modal');
    const copyBtn = document.getElementById('copy-citation');
    
    citeButtons.forEach(btn => {
        btn.addEventListener('click', function() {
            const title = this.getAttribute('data-title');
            const authors = this.getAttribute('data-authors');
            const venue = this.getAttribute('data-venue');
            
            // Create citation in APA format
            const citation = `${authors}. "${title}" <em>${venue}</em>.`;
            
            citationText.innerHTML = citation;
            modal.style.display = 'block';
        });
    });
    
    closeModal.addEventListener('click', function() {
        modal.style.display = 'none';
    });
    
    window.addEventListener('click', function(event) {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });
    
    copyBtn.addEventListener('click', function() {
        const textToCopy = citationText.textContent;
        navigator.clipboard.writeText(textToCopy).then(() => {
            copyBtn.textContent = 'Copied!';
            setTimeout(() => {
                copyBtn.textContent = 'Copy to Clipboard';
            }, 2000);
        });
    });
});
</script>
