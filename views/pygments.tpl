%include header title=" / pygments"
<div id="settings-box">
<form action="setpygments" method="get">        
	<b>Source file encoding</b> <small class="gray">Specify the encoding of the file being previewed</small>
	<input name="encoding" value={{encoding}} >
	
	<b>Display line numbers in the source file</b>
	<br>
	<small class="gray">If set to 'table', output line numbers as a table with two cells, one containing the line numbers, the other the whole code.</small>
	<input name="linenos" value={{linenos}}>
	
	<b>Start line numbers from</b> <small class="gray">The line number for the first line (default: 1)</small>
	<input name="linenostart" value={{linenostart}}>
	
	<b>Line number step</b> <small class="gray">If set to a number n > 1, only every nth line number is printed.</small>
	<input name="linenostep" value={{linenostep}}>
	<hr>
	<small class="gray">
	for more  options available see <a href="http://pygments.org/docs/formatters/#common-options">http://pygments.org/docs/formatters/#common-options</a>
	</small><br>
	<b>Pygments raw options</b> <small class="gray">(pass key-value pairs of pygments options separated by ,)</small>
	    <input name="options" disabled value={{options}}>    
	<br>
	<input type="submit" value="Save">
	<a href="./"><input type="button" value="Cancel"></a>
</form>
</div>
%include footer