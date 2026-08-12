---
layout: page
title: Publications
permalink: /publication/
---

<div class="publications-container">

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
    
    <ul class="pub-list">
        {% for paper in year[1] %}
        <li class="pub-item">
            <div class="pub-title">{{ paper.title }}</div>
            <div class="pub-authors">{{ paper.authors }}</div>
            <div class="pub-venue">
                <em>{{ paper.venue }}</em>
                {% if paper.status and paper.status != "" %}
                    <span class="pub-status">, {{ paper.status }}</span>
                {% endif %}
            </div>
            {% if paper.remark %}
            <div class="pub-remark">{{ paper.remark }}</div>
            {% endif %}
            <div class="pub-links">
                {% if paper.pdf %}
                <a href="/{{ paper.pdf }}" class="pub-link" target="_blank">[PDF]</a>
                {% endif %}
                <span class="pub-link pub-link-cite" data-title="{{ paper.title }}" data-authors="{{ paper.authors }}" data-venue="{{ paper.venue }}">[Cite]</span>
            </div>
        </li>
        {% endfor %}
    </ul>
</div>
{% endfor %}

<div class="publications-footer">
    <p><strong>Note:</strong> My name is highlighted in <strong>bold</strong> in the author lists. Click on PDF links to download full papers when available.</p>
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
    const citeButtons = document.querySelectorAll('.pub-link-cite');
    const modal = document.getElementById('citation-modal');
    const citationText = document.getElementById('citation-text');
    const closeModal = document.querySelector('.close-modal');
    const copyBtn = document.getElementById('copy-citation');
    
    citeButtons.forEach(btn => {
        btn.addEventListener('click', function() {
            const title = this.getAttribute('data-title');
            const authors = this.getAttribute('data-authors');
            const venue = this.getAttribute('data-venue');
            
            // Strip HTML tags from authors for plain text citation
            const tmp = document.createElement('div');
            tmp.innerHTML = authors;
            const authorsPlain = tmp.textContent || tmp.innerText || '';
            
            const citation = authorsPlain + '. "' + title + '," ' + venue + '.';
            
            citationText.textContent = citation;
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
