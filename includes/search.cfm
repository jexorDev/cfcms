
<div class="card text-white bg-success mb-3">
  <div class="card-header">Filter</div>
  <div class="card-body">
    <form name="filterSearchForm" id="filterSearchForm">
    	<div class="form-group">
            <label>Title</label>
            <input type="text" class="form-control" id="title" name="title">    
         </div>
         <div class="form-group">
            <label>Category</label>
            <cfinclude template="categories.cfm" />
         </div>
         <input type="button" class="btn btn-outline-light" value="Search" onClick="submitFilterSearchForm()">
    </form>
  </div>
 </div>