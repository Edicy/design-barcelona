{% if site.search.enabled %}
<div class="search-container">
  <form class="search search-form js-search-form" action="#">
    <div class="search-box">
      <input type="text" class="search-input js-search-input" placeholder="{{ "search"|lc }}" />
      <a href="#" class="search-submit js-search-toggler">
        {% include "search-svg "%}
      </a>
      <a href="#close" class="search-close js-search-reset">
        <svg version="1.1" baseProfile="full" height="28px" width="28px" viewbox="0 0 56 56">
        <path fill="rgb( 0, 0, 0 )"
         d="M13.834,11.42 C13.834,11.42 22.172,19.758 22.172,19.758 C22.839,20.425 22.839,21.505 22.172,22.172 C21.506,22.838 20.425,22.839 19.758,22.172 C19.758,22.172 11.42,13.834 11.42,13.834 C11.42,13.834 3.08200000000001,22.172 3.08200000000001,22.172 C2.41500000000001,22.839 1.334,22.838 0.66800000000001,22.172 C0.001,21.505 0,20.425 0.66800000000001,19.758 C0.66800000000001,19.758 9.006,11.42 9.006,11.42 C9.006,11.42 0.66800000000001,3.08200000000001 0.66800000000001,3.08200000000001 C0.001,2.41500000000001 0.001,1.334 0.66800000000001,0.66800000000001 C1.334,0.001 2.41500000000001,0 3.08200000000001,0.66800000000001 C3.08200000000001,0.66800000000001 11.42,9.00500000000001 11.42,9.00500000000001 C11.42,9.00500000000001 19.758,0.66800000000001 19.758,0.66800000000001 C20.425,0 21.505,0.001 22.172,0.66800000000001 C22.838,1.334 22.839,2.41500000000001 22.172,3.08200000000001 C22.172,3.08200000000001 13.834,11.42 13.834,11.42 Z "/>
        </svg>
        
      </a>
    </div>
  </form>
  <div class="search-results"></div>
</div>
{% endif %}