<%@ page contentType="text/html; charset=utf-8" %>
       <div class="col-sm-9 col-sm-offset-3 col-md-9  main">
         <div class="bs-docs-section">
  <h1 id="overview" class="page-header">개요</h1>

  <p class="lead">웹개발을 더 좋고, 빠르고, 강력하게 접근하는 방법을 가진 부트스트랩의 기반시설의 핵심적인 부분을 알아보세요.</p>

  <h3 id="overview-doctype">HTML5 doctype</h3>
  <p>부트스트랩은 HTML5 doctype 의 사용을 필요로 하는 HTML 요소와 CSS 속성을 이용합니다. 당신의 프로젝트들을 시작할 때 그것들 포함하세요.</p>
<div class="highlight"><pre><code class="language-html" data-lang="html"><span class="cp">&lt;!DOCTYPE html&gt;</span>
<span class="nt">&lt;html</span> <span class="na">lang=</span><span class="s">"ko"</span><span class="nt">&gt;</span>
  ...
<span class="nt">&lt;/html&gt;</span></code></pre></div>

  <h3 id="overview-mobile">모바일 우선</h3>
  <p>부트스트랩2 에서 우리는 모바일 친화적인 스타일을 프레임워크의 중요한 부분으로 추가했었습니다. 부트스트랩3 에서는 시작부터 모바일 친화적으로 다시 만들었습니다. 모바일은 부가적인 부분이 아닌 핵심적인 부분으로 만들어졌습니다. 말하자면, <strong>부트스트랩은 모바일 우선입니다</strong>. 모바일 우선 스타일은 전 독립된 파일들이 아닌 전 영역을 걸쳐 확인할 수 있습니다.</p>
  <p>적절한 렌더링과 확대/축소를 위해, 당신의 <code>&lt;head&gt;</code> 에 <strong>viewport 메타태그를 추가하세요</strong>.</p>
<div class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;meta</span> <span class="na">name=</span><span class="s">"viewport"</span> <span class="na">content=</span><span class="s">"width=device-width, initial-scale=1"</span><span class="nt">&gt;</span></code></pre></div>
  <p>당신은 viewport 메타태그에 <code>user-scalable=no</code> 를 추가하여 모바일 기기에서 확대/축소 기능을 끌 수 있습니다. 확대/축소를 끈다는 것은, 사용자들이 오직 스크롤만 할 수 있음을 의미합니다. 그리고 당신의 사이트가 좀더 네이티브 어플같이 느껴지도록 합니다. 종합적으로 봤을때 우리는 모든 사이트에 이것을 추천하지 않습니다. 그러므로 조심히 사용하세요!</p>
<div class="highlight"><pre><code class="language-html" data-lang="html"><span class="nt">&lt;meta</span> <span class="na">name=</span><span class="s">"viewport"</span> <span class="na">content=</span><span class="s">"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"</span><span class="nt">&gt;</span></code></pre></div>

  <h3 id="overview-type-links">타이포그래피와 링크</h3>
  <p>부트스트랩은 기본적인 전역적인 표시, 타이포그래피, 링크 스타일이 설정되어 있습니다. 구체적으로, 우리는::</p>
  <ul>
    <li><code>body</code> 에서 <code>background-color: #fff;</code> 를 설정합니다.</li>
    <li>기본 타이포그래피로 속성 <code>@font-family-base</code>, <code>@font-size-base</code>, <code>@line-height-base</code> 를 사용합니다.</li>
    <li>전역 링크의 색은 <code>@link-color</code> 에 설정하고 밑줄효과는 <code>:hover</code> 에만 적용되어 있습니다.</li>
  </ul>
  <p>이 스타일들은 <code>scaffolding.less</code> 내에서 찾을 수 있습니다.</p>

  <h3 id="overview-normalize">CSS 초기화</h3>
  <p>향상된 크로스 브라우징을 위해, 우리는 <a href="https://twitter.com/necolas" target="_blank">Nicolas Gallagher</a> 와 <a href="https://twitter.com/jon_neal" target="_blank">Jonathan Neal</a> 의 프로젝트인 <a href="http://necolas.github.io/normalize.css/" target="_blank">Normalize.css</a> 를 사용합니다.</p>

        </div>
     
</div>