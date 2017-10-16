<!-- <Snippet1> -->
<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  void ProductsDetailsView_ItemCommand(Object sender, DetailsViewCommandEventArgs e)
  {
  
    if(e.CommandName == "Add")
    {
      // Retrieve the current author's last name. In this example, the
      // last name is displayed in the second cell (index 1) of the 
      // second row (index 1).
      string lastName = ProductsDetailsView.Rows[1].Cells[1].Text;
      
      // Create a ListItem object to represent the author.
      ListItem item = new ListItem(lastName);
      
      // Add the ListItem to the list box control if it does not
      // already appear in the ListBox.
      if(!ProductsListBox.Items.Contains(item))
      {
        ProductsListBox.Items.Add(item);
      }
      
    }
  
  }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>ButtonFieldBase ShowHeader Example</title>
</head>
<body>
    <form id="form1" runat="server">
        
      <h3>ButtonFieldBase ShowHeader Example</h3>
      
      Click the Add button to add the product to the list box.
      
      <table cellpadding="30">
      
        <tr>
        
          <td>
        
            <!-- Set the ShowHeader property of the ButtonField -->
            <!-- declaratively to display the header section in -->
            <!-- that row.                                      -->
            <asp:detailsview id="ProductsDetailsView" 
              datasourceid="ProductsSqlDataSource" 
              autogeneraterows="false"
              allowpaging="true"
              gridlines="both"
              onitemcommand="ProductsDetailsView_ItemCommand"   
              runat="server">
                
              <Fields>
                
                <asp:buttonfield buttontype="Link" 
                  commandname="Add"
                  headertext="Add Product" 
                  showheader="true" 
                  text="Add"/>
                <asp:boundfield datafield="ProductID" 
                  headertext="ID"/>
                <asp:boundfield datafield="ProductName" 
                  headertext="Product"/>
                
              </Fields>
                
            </asp:detailsview>
            
            <!-- This example uses Microsoft SQL Server and connects -->
            <!-- to the Northwind sample database.                        -->
            <asp:sqldatasource id="ProductsSqlDataSource"  
              selectcommand="SELECT ProductName, ProductID FROM Products"
              connectionstring="<%$ ConnectionStrings:NorthwindConnection %>"
              runat="server">        
            </asp:sqldatasource>     
      
          </td>
          
          <td>
      
            Products List:<br/>
            <asp:listbox id="ProductsListBox" 
              runat="server"/>
         
          </td>
         
        </tr>
           
      </table>
            
    </form>
  </body>
</html>

<!-- </Snippet1> -->