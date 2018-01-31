<cf_template>          

<cfif structKeyExists(url, 'type')>
  <cfset type="#type#">
</cfif>
<cfset postsTabSelected = false>
<cfset authorsTabSelected = false>
<cfset categoriesTabSelected = false>

<CFSWITCH EXPRESSION="#type#">
  <CFCASE VALUE="posts">
    <cfset postsTabSelected=true>
  </CFCASE>
  <CFCASE VALUE="categories">
    <cfset categoriesTabSelected=true>
  </CFCASE>
  <CFCASE VALUE="authors">
    <cfset authorsTabSelected=true>
  </CFCASE>
  <CFDEFAULTCASE>
    <cfset postsTabSelected=true>
  </CFDEFAULTCASE>
</CFSWITCH>

<cfquery name="categories">
  SELECT
    Id,
    Name
  FROM
    Category
</cfquery>

<ul class="nav nav-tabs" id="maintenanceTabList" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Posts</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Authors</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="categories-tab" data-toggle="tab" href="#categories" role="tab" aria-controls="categories" aria-selected="false">Categories</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

  </div>
  <div class="tab-pane fade" id="categories" role="tabpanel" aria-labelledby="categories-tab">
    <div id="categories">
    </div>
  </div>
</div>

<div class="modal" tabindex="-1" role="dialog" id="add-category-modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Category</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
            <label>Name</label>
            <input type="text" class="form-control" name="name" id="category-name-new">

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onClick="submitNewCategory()">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</cf_template>

<script>

$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
  e.target // newly activated tab
  e.relatedTarget // previous active tab
  var tabId = $('#maintenanceTabList a[aria-selected="true"]').attr('id');

  if (tabId == "categories-tab")
  {
    $.ajax({
      type: "GET",
      url: "categories.cfm",      
      success: function(data) {              
          $('#categories').html(data);            
       }
    });
  }

});

function addCategory() {
    $('#add-category-modal').show();
}

function submitNewCategory() {
    var catName = $('#category-name-new').val();

    $.ajax({
      type: "POST",
      url: "categories.cfm",   
      data: {name: catName},
      success: function(data) {              
          $('#categories').html(data);   
          $('#add-category-modal').hide();         
       }
    });

}  


</script>