<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Form</title>

    <!--Linking CSS-->
    <link rel="stylesheet" type="text/css" href="CSS/StyleSheet.css" />

    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }

        .auto-style6 {
            width: 150px;
            height: 30px;
        }
    </style>

</head>


<body>

    <br />
    <br />
    <br />
    <br />
    <div>
        <form id="orderForm" runat="server">
            <h1>Order Form</h1>
            <img src="Images/q-epicure-logotagline.jpg" height="150" width="150" />

            <asp:Table ID="Table1" runat="server">
                <asp:TableHeaderRow runat="server">

                    <asp:TableHeaderCell>
                        <p class="auto-style2">First name:</p>
                    </asp:TableHeaderCell>

                    <asp:TableHeaderCell>
                        <%-- asp text box --%>
                        <asp:TextBox ID="firstName" Style="resize: none" Width="150px" Height="30px" Wrap="true" runat="server" />
                        <%-- Regular html textbox --%>
                        <%--<input type="text" name="fName" form="orderForm" class="auto-style6" /></td>--%>
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <p class="auto-style2">Last Name:</p>
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <%-- asp text box --%>
                        <asp:TextBox ID="lastName" Style="resize: none" Width="150px" Height="30px" Wrap="true" runat="server" />
                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:Button ID="btnRemember" Text="Remember Me" OnClick="btnRemember_Click" runat="server" />
                    </asp:TableHeaderCell>

                    <%--<input type="text" name="lName" form="orderForm" class="auto-style6" /></td>--%><%--<td class="auto-style4">&nbsp;</td>--%>
                </asp:TableHeaderRow>
                <%--<tr>
                    <td>
                        <p class="auto-style2">City:</p>
                    </td>
                    <td class="auto-style3">--%><%--  <asp:TextBox ID="TextBox1" Style="resize: none" Width="150px" Height="30px" Wrap="true" runat="server" />--%><%--<input type="text" name="city" form="orderForm" class="auto-style6" /></td>--%><asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell>
                            <p class="auto-style2">Postal Code:</p>
                        </asp:TableHeaderCell><asp:TableHeaderCell>
                            <asp:TextBox type="text" ID="postalCode" form="orderForm" class="auto-style6" runat="server" />
                        </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <%--<td class="auto-style4">&nbsp;</td>--%><%--</tr>--%>
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell>
                        <p class="auto-style2">Phone Number:</p>
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <asp:TextBox type="text" ID="phoneNumber" form="orderForm" class="auto-style6" runat="server" />
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <p class="auto-style2">Province:</p>
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <asp:ListBox ID="province" runat="server">
                            <asp:ListItem Text="Alberta" Value="Alberta" />
                            <asp:ListItem Text="British Columbia" Value="British Columbia" />
                            <asp:ListItem Text="Manitoba" Value="Manitoba" />
                            <asp:ListItem Text="New Brunswick" Value="New Brunswick" />
                            <asp:ListItem Text="Newfoundland & Labrador" Value="Newfoundland & Labrador" />
                            <asp:ListItem Text="Nova Scotia" Value="Nova Scotia" />
                            <asp:ListItem Text="Ontario" Value="Ontario" />
                            <asp:ListItem Text="Prince Edward Island" Value="Prince Edward Island" />
                            <asp:ListItem Text="Quebec" Value="Quebec" />
                            <asp:ListItem Text="Saskatchewan" Value="Saskatchewan" />
                        </asp:ListBox>

                    </asp:TableHeaderCell><asp:TableHeaderCell>&nbsp;
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell>
                        <p class="auto-style2">Menu</p>
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <asp:ListBox ID="menu" runat="server" Height="85px" Width="150px">
                            <asp:ListItem Text="BBQ Chicken" Value="#FF0000" Selected="True" />
                            <asp:ListItem Text="BBQ Beef" Value="#0000FF" />
                            <asp:ListItem Text="Chicken Soup" Value="#008000" />
                            <asp:ListItem Text="Beef Soup" Value="#008000" />
                            <asp:ListItem Text="Beverage" Value="#008000" />
                            <asp:ListItem Text="Dessert" Value="#008000" />
                        </asp:ListBox><br />
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <p class="auto-style2">Pickup/Delivery:</p>
                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <asp:RadioButton ID="Pickup" runat="server" GroupName="radio1" />Pick up
                        <br />
                        <asp:RadioButton ID="Delivery" runat="server" GroupName="radio1" />Delivery
                    </asp:TableHeaderCell><asp:TableHeaderCell>&nbsp;</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell>

                        <p class="auto-style2">&nbsp;Comments:</p>

                    </asp:TableHeaderCell><asp:TableHeaderCell>
                        <asp:TextBox ID="tbComment" TextMode="MultiLine" runat="server" Width="720px" Height="80px" />
                        <asp:Button ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server" />
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </form>
    </div>
</body>
</html>