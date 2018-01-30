<cf_template>      
    
  <cfquery name="posts">
    SELECT 
    	TOP 4 *
    FROM 
    	Post
    INNER JOIN
    	Category
    ON
    	Category.Id = Post.CategoryId
    ORDER BY 
    	DatePosted DESC      
  </cfquery>

  <div class="col-2">
    <cfinclude template="../../includes/categories.cfm" />
  </div>
  <div class="col-10">
      <div class="card card-body">
        <cfoutput>
          <h6><span class="badge badge-primary">New!</span></h6>
          <h1 class="display-4">#posts.Title#</h1>
          <p class="lead">#posts.Author# | #DateFormat(posts.DatePosted, "mmm-dd-yyyy")#</p>
          <hr class="my-4">
          <p>#posts.Content#</p>        
        </cfoutput>      
    </div>
  </div>
    
   
</cf_template>

