%include header title=" / settings"
<div id="settings-box">
<form action="set" method="get">
	<b>Find similar</b> <small class="gray">(1 or 0, show "squats" and "squatter")</small>
	<input name="stem" value={{stem}}>
	<b>Max results</b> <small class="gray">(maximum number of results to show)</small>
	<input name="maxresults" value={{maxresults}}>
	<hr>
	<b>Results per page</b> <small class="gray">(0 for no pagination)</small>
	<input name="perpage" value={{perpage}}>
	<b>Context words</b> <small class="gray">(number of words shown in search results)</small>
	<input name="context" value={{context}}>
	<b>Context characters</b> <small class="gray">(max characters in a snippet)</small>
	<input name="maxchars" value={{maxchars}}>
	<b>Time</b> <small class="gray">(time format string)</small>
	<input name="timefmt" value={{timefmt}}>
	<b>Folder depth</b> <small class="gray">(number of levels of the folder dropdown)</small>
	<input name="dirdepth" value={{dirdepth}}>
	<hr>
	%if haspygments:
	    <b>Enable pygments</b> <small class="gray">(enables source file syntax highlight in preview if True)</small>
	    <input name="highlight" value={{highlight}}>
	    %if highlight:
	        <b>Use MIME-type to guess lexer rather filename</b>
	        <small class="gray">(uses mime-based guess on how to preview file content)</small>
	        <input name="usemime" value={{usemime}}><br>
	        <a href="/pygments">Configure pygments options</a>
	    %end
	    <hr>
	%else:
	    <b>No pygments library found</b> <small class="gray">(Install pygments to enable source file syntax highlight in preview)</small>
	    <hr>
	%end
	<b>Locations</b><br>
	%for d in dirs:
		<small>{{d}}</small><input name="mount_{{d}}" value={{mounts[d]}}>
	%end
	<hr>
	<b>Add to browser</b>
	<br>
	<a href="#" onClick="addOpenSearch();return false">Register recoll into browser search engines</a>
	<br><br><hr>
	<input type="submit" value="Save">
	<a href="./"><input type="button" value="Cancel"></a>
</form>
</div>
%include footer
