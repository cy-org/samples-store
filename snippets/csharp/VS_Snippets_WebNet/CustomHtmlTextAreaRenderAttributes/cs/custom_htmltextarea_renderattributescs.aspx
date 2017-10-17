<!-- <Snippet1> -->
<%@ Register TagPrefix="aspSample" Namespace="Samples.AspNet.CS.Controls" Assembly="Samples.AspNet.CS" %>
<%@ Page Language="C#" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
  
  void Page_Load(Object sender, EventArgs e)
  {
    HtmlTextArea1.Value = "Hello HTML Text Area World.";
  }
  
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head>
    <title>Custom HtmlTextArea RenderAttributes Example</title>
  </head>

  <body>
    <form id="Form1" 
          method="post" 
          runat="server">

      <h3>Custom HtmlTextArea - RenderAttributes - C# Example</h3>

      <aspSample:CustomHtmlTextAreaRenderAttributes 
        id="HtmlTextArea1" 
        name="HtmlTextArea1" 
        runat="server" 
        rows="4" 
        cols="50" />
        
    </form>
  </body>
</html>
<!-- </Snippet1> -->
