<cfquery name="categories">
	SELECT 
		Id,
		Name
	FROM 
		Category
</cfquery>

<select class="form-control" id="category" name="category">
	<cfoutput query="categories">
		<option value="#Id#">#Name#</option>
	</cfoutput>
</select>