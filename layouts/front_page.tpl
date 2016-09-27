<!DOCTYPE html>
{% include "template-variables" %}
<html class="front-page blog-list-page {% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% assign front_page = true %}
  {% include "edicy-tools-variables" %}
  {% include "html-head" blog_listing_page: true %}
</head>
<body class="main-menu-not-fitting{% if site.search.enabled %} search-enabled{% endif %}">

  <div class="holder">

    {% include "header" %}

    <main class="main" data-search-indexing-allowed="true">
      <a href="#" class="scroller-arrow "><span class="animated-bounce"></span></a>
      <div class="main-inner">
        {% if editmode %}
          {% for item in site.menuitems_with_hidden %}
            {% if item.blog? %}
              <div class="new-article link" data-href="{{ item.url }}?new">
                <div class="tbl">
                  <div class="tbl-row">
                    <div class="tbl-cell">
                      <div class="new-article-inner">
                        <svg xmlns="http://www.w3.org/2000/svg" width="72px" height="57px" viewBox="-21 -13.5 72 57">
                          <g>
                            <path fill="none" stroke="currentColor" stroke-width="5" d="M-6,32V-10H47v50H-6C-12,40-17,37-17,31V5h11"></path>
                            <path fill="currentColor" d="M23,8h16v5H23V8z"></path>
                            <path fill="currentColor" d="M23-2h16v5H23V-2z"></path>
                            <path fill="currentColor" d="M23,17h16v5H23V17z"></path>
                            <path fill="currentColor" d="M2,27h37v5H2V27z"></path>
                            <path fill="currentColor" d="M2-2h16v25H2V-2z"></path>
                          </g>
                        </svg>
                        <h3 class="new-article-title">{{ "add_new_post" | lc }}</h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              {% break %}
            {% endif %}
          {% endfor %}
        {% endif %}

        {% for article in site.latest_articles %}
          {% include "article-variables" %}
          <article class="article" data-article-id="{{ article.id }}">
            <div data-href="{{ article.url }}" class="--lazy link" {% if article.data.background.image %}{% if forloop.index < 6 %} style="background-image: url('{{ article.data.background.image }}');" data-lazy-loaded="true"{% else %} data-article-image="{{ article.data.background.image }}" {% endif %}{% endif %} >
              <div class="article-bg-color" style="{{ bg_color_style }}"></div>
              <div class="article-inner">
                {% if editmode %}
                  <button class="voog-bg-picker-btn js-bg-picker-settings" data-bg-image="{{ article.data.background.image }}" data-bg-color="{{ bg_color }}" data-bg-color-data="{{ bg_color_data | escape }}"></button>
                {% endif %}
                <div class="article-content">
                  <h2>{{ article.title }}</h2>
                  <div class="article-date">{{ article.created_at | format_date: "short" }}</div>
                </div>
              </div>
            </div>
          </article>
        {% endfor %}
      </div>
    </main>
  </div>

  {% include "footer" %}
  {% include "langmenu-mobile" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}

  <script>
    $(window).on('load', function() {
      $('.main').lazyLoad({
        className: '--lazy',
        urlData: 'article-image',
        distance: 300
      });
    });
  </script>
</body>
</html>
