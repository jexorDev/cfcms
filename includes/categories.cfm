<cfquery name="categories">
	SELECT 
		Id,
		Name
	FROM 
		Category
</cfquery>

<select class="form-control" id="category" name="category">
	
	<option value=""></option>
	
	<cfoutput query="categories">		
		<option value="#Id#">#Name#</option>
	</cfoutput>
</select>