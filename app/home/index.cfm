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
    <cfoutput query="posts" startrow="2">

        <div class="card-body">
          <h5 class="card-title">#Card title#</h5>
          <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="card-link">Card link</a>
          <a href="#" class="card-link">Another link</a>
        </div>
     
    </cfoutput>
  </div>
    
   
</cf_template>

