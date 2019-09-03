<%-- actively combat attempts to load the site in an iframe --%>
<%-- this will redirect to the URL defined on the iframe src--%>
<style id="antiClickjack">body{display:none;}</style>
<script type="text/javascript">

	if (self === top) {
		var antiClickjack = document.getElementById("antiClickjack");
		antiClickjack.parentNode.removeChild(antiClickjack);
	} else {
		top.location = self.location;
	}
</script>
