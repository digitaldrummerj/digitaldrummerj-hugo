---
title: Search
permalink: /search/
sidebar: false
---


<!-- TODO consider https://developers.google.com/custom-search/docs/element -->

<script language="Javascript" type="text/javascript">
	function google_search() {
		var query = document.getElementById("google-search").value;
		window.open("https://www.google.com/search?q=" + query + "+site:" + "{{ .Site.BaseURL | absLangURL }}");
	}
</script>

<form id="search" onsubmit="google_search(); return false;">
	<input type="text" id="google-search" placeholder="Enter search term and hit enter">
</form>
<noscript>
	Search <a href="https://www.google.com/search?q=site:{{ .Site.BaseURL | absLangURL }}" target="_blank">Google</a> for:
	<pre><code>search-term site:{{ {{ .Site.BaseURL | absLangURL }} }}</code></pre>
</noscript>
