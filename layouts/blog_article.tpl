<!DOCTYPE html>
{% include "template-variables" %}
{% include "blog-article-variables" %}
{% include "blog-settings-variables" %}
<html class="content-page {% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" %}
</head>
<body class="main-menu-not-fitting{% if site.search.enabled %} search-enabled{% endif %}">

  <div class="holder">
    {% include "header" %}

    <main class="main" data-search-indexing-allowed="true">
      <div class="main-inner">
        <div class="content-wrap">
          <div class="wrap">
            <div class="content formatted cfx">

              <header class="post-header ">

                {% assign article_year = article.created_at | format_date: "%Y" | to_num %}
                {% if article_year == current_year %}
                  {% assign article_date_format = "long_without_year" %}
                {% else %}
                  {% assign article_date_format = "long" %}
                {% endif %}

                <h1>{% editable article.title %}
                  <time class="post-date {{toggle_article_date}}" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: article_date_format }}</time>
                  {% if editmode %}
                    {% include "article-settings-editor" %}
                  {% endif %}
                </h1>
              </header>
              <section class="post-content">
                <div class="post-excerpt cfx formatted" {{ edy_intro_edit_text }}>{% editable article.excerpt %}</div>
                <div class="post-body cfx formatted">{% editable article.body %}</div>
                <div class="post-body cfx formatted">{% content name="additional_body" bind="Article" %}</div>

                {% if editmode or article.tags.size > 0 %}
                <div class="post-tags">
                  {% if editmode %}
                    {% editable article.tags %}
                  {% else %}
                    <ul>
                    {% for tag in article.tags %}
                      <li><a href="/{{ article.page.path_with_lang }}/tagged/{{ tag.path }}" class="post-tag">{{ tag.name }}</a></li>
                    {% endfor %}
                    </ul>
                  {% endif %}
                </div>
                {% endif %}
              </section>

              {% if article.older or article.newer %}
                <div class="post-nav">
                  <div class="post-nav-inner">
                    {% if article.older %}
                      <a class="post-nav-link post-nav-link-older" href="{{ article.older.url }}">
                        <div class="post-nav-link-inner">
                          <div class="post-nav-direction">{{ "previous" | lc }}</div>
                          <div class="post-nav-title">{{ article.older.title }}</div>
                        </div>
                      </a>
                    {% endif %}

                    {% if article.newer %}
                      <a class="post-nav-link post-nav-link-newer" href="{{ article.newer.url }}">
                        <div class="post-nav-link-inner">
                          <div class="post-nav-direction">{{ "next" | lc }}</div>
                          <div class="post-nav-title">{{ article.newer.title }}</div>
                        </div>
                      </a>
                    {% endif %}
                  </div>
                </div>
              {% endif %}

              <section class="post-bottom formatted cfx {{toggle_article_comment}}">
                {% include "comment-form" %}
                {% include "comments" %}
              </section>

            </div>
          </div>
        </div>
      </div>
      {% include "footer" %}
    </main>
  </div>

  {% include "langmenu-mobile" %}
  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}

  <script>
    $(function() {
      var langCode ='{% if page.language_code == 'zh'%}zh-cn{% else %}{{ page.language_code }}{% endif %}';

      $('.comment-created').each(function() {
        var $el = $(this);
        $el.text(moment($el.data('date'), "YYYY-MM-DD HH:mm:ss Z").locale(langCode).fromNow())
      });
    });
  </script>
</body>
</html>
