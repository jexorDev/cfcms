<cf_template>          

<!---
<cfif structKeyExists(url, 'keyword')>
  <cfset keyword="#url.keyword#" >

  <cfif keyword EQ ''>
    <div class="alert alert-danger">Please provide a search keyword</div>
  <cfelse>
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
        Post.Title LIKE '%#keyword#%'
      OR
        Author.Name LIKE '%#keyword#%'
      OR
        Category.Name LIKE '%#keyword#%'
    </cfquery>

    <cfoutput>
      <div class="row">
        <div class="col-12">
          <h1>Results for #keyword#...</h1>
        </div>
      </div>      
    </cfoutput>
--->
    <div class="row">
      <div class="col-3">
        <cfinclude template="../../includes/search.cfm" />
      </div>
      <div class="col-9">
        <div id="results">
        </div>
        <div class="row justify-content-md-center" id="progress-bar">
          <div class="col-3 mt-9">
            <div class="card card-body">
              <h5>Loading...</h5>
              <div class="progress">            
                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 100%"></div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      
    </div>
        <!---
        <cfif results.RecordCount EQ 0>
          <div class="row">
            <div class="col-12">
              <div class="alert alert-primary">
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
    
      </div>
   
  </cfif>

</cfif>
--->   
<script>
  $(function(){
    $('#progress-bar').hide();
  });

  function submitFilterSearchForm() {
    $('#results').html('');
    $('#progress-bar').show();
    var title = $('#title').val();
    
    setTimeout(function(){
       $.ajax({
            type: "GET",
            url: "results.cfm",
            data: {title: title},
            success: function(data) {              
                $('#results').html(data);  
                $('#progress-bar').hide();              
             }
        });
    }, 500);
   
  }
  
   
  function errorHandler(code, msg)
  {
    alert("Error!!! " + code + ": " + msg);
  }

 
</script>
</cf_template>


 