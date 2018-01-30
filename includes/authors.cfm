<cfquery name="categories">
	SELECT * FROM Category
</cfquery>

<div class="card " style="width: 18rem;">
  <div class="card-header text-white bg-success">
    Categories
  </div>
  <ul class="list-group list-group-flush">
  	<cfoutput query="categories">
    	<li class="list-group-item">#categories.name#</li>
    </cfoutput>
  </ul>
</div>