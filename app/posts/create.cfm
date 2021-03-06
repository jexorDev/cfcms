<cf_template>          

<cfif structKeyExists(form, 'postCreateSubmit')>
  <cfquery>
    
    <cfset title=#form.title#>
    <cfset authorId=#form.author#>
    <cfset datePosted=#DateFormat(form.postdate, "yyyy-mm-dd")#>
    <cfset categoryId=#form.category#>
    <cfset content=#form.content#>

    INSERT INTO Post
    (
      Title,
      AuthorId,
      DatePosted,
      CategoryId,
      Content
    )
    VALUES
    (
      <cfqueryPARAM value="#title#" CFSQLType='CF_SQL_VARCHAR'>,
      <cfqueryPARAM value="#authorId#" CFSQLType='CF_SQL_INT'>,
      <cfqueryPARAM value="#datePosted#" CFSQLType='CF_SQL_DATETIME'>,
      <cfqueryPARAM value="#categoryId#" CFSQLType='CF_SQL_INT'>,
      <cfqueryPARAM value="#content#" CFSQLType='CF_SQL_VARCHAR'>
    )
  </cfquery>
  <div class="row justify-content-lg-center"> 
    <div class="col-12">
      <div class="alert alert-success fade show">Post successfully saved.</div>
    </div>
  </div>
</cfif>
<cfquery name="categories">
  SELECT
    Id,
    Name
  FROM
    Category
</cfquery>
<cfquery name="authors">
  SELECT
    Id,
    Name
  FROM
    Author
</cfquery>
<div class="col-12">
  <h1>Create new post</h1>
  <form action="create.cfm" method="post">
    <div class="row">
      <div class="col-3">
          <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="title" name="title" >    
          </div>
          <div class="form-group">
            <label for="title">Author</label>
            <select class="form-control" id="author" name="author">
              <cfoutput query="authors">
                <option value="#Id#">#Name#</option>
              </cfoutput>
            </select>
          </div>
          <div class="form-group">
            <label for="title">Category</label>
            <cfinclude template="../../includes/categories.cfm" />
          </div>
          <div class="form-group">
            <label for="title">Date</label>
            <input
                  type="text" class="form-control" id="postdate" name="postdate"></input>
          </div>          
      </div>      
      <div class="col-9">
        <div class="form-group">
          <label for="title">Content</label>
          <textarea class="form-control" rows="12" id="content" name="content"></textarea>
        </div>
        <div class="form-inline">
          <input type="submit" class="btn btn-outline-primary mr-2" value="Save" name="postCreateSubmit" id="postCreateSubmit">
          <button class="btn btn-outline-secondary">Cancel</button>
        </div>
      </div>
    </div>    
  </form>
</div>
   
</cf_template>

<script type="text/javascript" src="../../static/js/post/post.js"></script>
<link href="../../static/css/datepicker.css" rel="stylesheet" type="text/css"></link>    