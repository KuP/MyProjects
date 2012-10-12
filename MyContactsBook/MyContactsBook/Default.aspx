<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyContactsBook._Default" %>
<%@ Import Namespace="MyContactsBook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
        <%for (int i = 0; i < 1; i++)
          {%>
          <tr id='str<%= _contacts[0] %>'>
              <td>
                 <input id='check<%= _contacts[0] %>' type="radio" onclick="checkClick(<%= _contacts[0]%>)" />
              </td>
              <td>
                 <input id="Surname" type="text" readonly = "readonly" title="FirstName" value = "<%=_contacts[1] %>"/>
              </td>
              <td>
                 <input id="Name" type="text" readonly = "readonly" title="LastName" value = "<%=_contacts[2] %>"/>
              </td>
              <td>
                <input id="City" type="text" readonly = "readonly" title="Address" value = "<%=_contacts[3] %>"/>
              </td>
              <td>
                 <input id="Street" type="text" readonly = "readonly" title="Phone" value = "<%=_contacts[4] %>"/>
              </td>
              <td>
                <input type="button" value="A" title="A" onclick="AButtonClick()"/>
                <input type="button" value="U" title="U" onclick="UButtonClick(<%= _contacts[0]%>)"/>
                <input type="button" value="D" title="D" onclick="DButtonClick(<%= _contacts[0]%>)"/>
              </td>
          </tr>
          <% } %>
        </table>
    </div>
    </form>
</body>
</html>
