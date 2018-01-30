<cfset title="#title#">


<cfquery name="results">
  SELECT
    Post.Title,
    Post.DatePosted,
    Post.Content,
    Author.Name Author,
    Category.Name Category
  FROM
    Post
  INNER JOIN
    Author
  ON
    Author.Id = Post.AuthorId
  INNER JOIN
    Category
  ON 
    Category.Id = Post.CategoryId
  WHERE
    Post.Title LIKE '%#title#%'

</cfquery>


<cfif results.RecordCount EQ 0>
  <div class="row">
    <div class="col-12">
      <div class="alert alert-danger">
        <h4 class="alert-heading">No results were returned</h4>
        <p>Please try refining your search</p>
      </div>
    </div>
  </div>
<cfelse>
  <cfoutput query="results">
    <div class="row mb-2">
      <div class="col-12">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">#Title# </h5><small><em>in</em> #Category#</small>
            <h6 class="card-subtitle mb-2 text-muted">#Author# | #DateFormat(DatePosted, 'mmm dd, yyyy')#</h6>
            <p class="card-text">#Left(Content, 30)#</p>
            <button class="btn btn-outline-success">Read More</button>
          </div>
        </div>
      </div>
    </div>
  </cfoutput>
</cfif>
      


  

 