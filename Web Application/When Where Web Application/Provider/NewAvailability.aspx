<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewAvailability.aspx.vb" Inherits="When_Where_Web_Application.NewAvailability" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title><%: Page.Title %> - When Where</title>
</head>
<body>
    <h3>Enter new event</h3>
     <h4><asp:Label ID="lblMessage" Visible="false" ForeColor="red" runat="server"/></h4>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr><td>Start Time:</td>
               <td><asp:TextBox ID="txtStartTime" text="" runat="server" /></td>
            </tr>
            <tr><td>End Time:</td> 
               <td><asp:TextBox ID="txtEndTime" text="" runat="server" /></td>
            </tr>
            <tr><td>Event Name:</td> 
               <td><asp:TextBox ID="txtName" text="" runat="server" /></td>
            </tr>
            <tr><td>Location:</td> 
               <td><asp:TextBox ID="txtLocation" text="" runat="server" /></td>
            </tr>
            <tr><td>ProviderID:</td> 
               <td><asp:TextBox ID="txtProviderID" text="0" runat="server" /></td>
            </tr>
            <%--<tr><td>Is Private?:</td> 
               <td><asp:CheckBox ID="ckIsPrivate" runat="server" Text=" "/></td>
            </tr>
            <tr><td>Price:</td> 
               <td><asp:TextBox ID="txtPrice" runat="server" /></td>
            </tr>
            <tr><td>Paypal Link:</td> 
               <td><asp:TextBox ID="txtPaypalLink" runat="server" /></td>
            </tr>
            <tr><td>Ask All To Bring:</td> 
               <td><asp:DropDownList id="lstBoxAskAllToBring" 
                       Width="100px"
                       runat="server">
                         <asp:ListItem>Scene</asp:ListItem>
                         <asp:ListItem>Script</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>--%>
             <tr><td><br /><asp:LinkButton ID="btnOK" text="OK" runat="server" Width="69px" /></td> 
               <td><br /><asp:LinkButton ID="btnCancel" text="Cancel" runat="server" Width="72px" /></td>
            </tr>
             
        </table>
    </div>
    </form>
</body>
</html>
