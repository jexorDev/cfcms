<cfif structKeyExists(form, 'name')>
  <cfquery>
      INSERT INTO Category
      (
          Name
      )
      VALUES
      (
          '#form.name#'
      )
  </cfquery>
</cfif>

<cfquery name="categories">
  SELECT
    Id,
    Name
  FROM
    Category
</cfquery>

<table class="table table-sm">
  <cfoutput query="categories">
    <tr>
      <td>#Name#</td>
      <td>
        <button class="btn btn-outline-danger btn-sm">Delete</button><button class="btn btn-outline-primary btn-sm ml-2">Edit</button>
      </td>
    </tr>        
  </cfoutput>
  <tr>
    <td></td>
    <td><button class="btn btn-outline-success" onClick="addCategory()">Add New</button></td>
  </tr>
</table>

