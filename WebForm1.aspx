<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication19.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 621px;
            height: 502px;
        }
        .auto-style2 {
            width: 300px;
        }
        .auto-style3 {
            width: 313px;
        }
        .auto-style4 {
            height: 708px;
            width: 1101px;
        }
    </style>
</head>
<body style="height: 544px; width: 1335px;">
    <form id="form1" runat="server" class="auto-style4">
        <div>
            <table style="background-color:#5f98f3;" align="center" class="auto-style1" >
                <tr align="center" width="50%" >
                    <td class="auto-style2" colspan="2">
                        <h1> CRUD OPERATIONS</h1>

                    </td>
                    <td></td>
                </tr>

                 <tr align="left" width="50%">
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="EMPLOYEE ID" Font-Bold="True" ></asp:Label>
                        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    </td>
                     
                </tr>

                 <tr align="left" width="50%">
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="EMPLOYEE NAME" Font-Bold="True" ></asp:Label>
                       <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    </td>
                </tr>

                 <tr align="left" width="50%">
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="EMPLOYEE CITY" Font-Bold="True" ></asp:Label>
                       <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    </td>
                </tr>

                 <tr align="left" width="50%">
                    <td class="auto-style3">
                       <asp:Label ID="Label4" runat="server" Text="SEX" Font-Bold="True" ></asp:Label>
                      <td>  
                          <asp:RadioButton ID="RadioButton1" runat="server" Text="MALE" />
                         
                          &nbsp;&nbsp;
                         
                          <asp:RadioButton ID="RadioButton2" runat="server" Text="FEMALE" />
                     </td>
                    </td>
                </tr>

                <tr align="left" width="50%">
                    <td class="auto-style3">
                      <asp:Label ID="Label6" runat="server" Text="CONTACT" Font-Bold="True" ></asp:Label>
                        <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style3" >

                        <asp:Button ID="Button1" runat="server" Text="INSERT" Width="82px" OnClick="Button1_Click" BackColor="#66FF99" Font-Bold="True" ForeColor="#CC0000" />

                        <asp:Button ID="Button4" runat="server" BackColor="#66FF99" Font-Bold="True" ForeColor="#CC0000" OnClick="Button4_Click" Text="LOAD" Width="89px" />

                    </td>
                    <td>

                        <asp:Button ID="Button3" runat="server" BackColor="#66FF99" Font-Bold="True" ForeColor="#CC0000" OnClick="Button3_Click" Text="DELETE" Width="79px" />

                        <asp:Button ID="Button2" runat="server" Width="82px" Text="UPDATE" BackColor="#66FF99" Font-Bold="True" ForeColor="#CC0000" OnClick="Button2_Click" />

                    </td>
                    

                </tr>
                <tr>
                    <td align="center" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    <td></td>
                </tr>
                <tr>
                    <td lass="auto-style2" colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="532px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    <Columns>
                    <asp:BoundField DataField="empid" HeaderText="EMPLOYEE ID" />
                    <asp:BoundField DataField="empname" HeaderText="EMPLOYEE NAME" />
                     <asp:BoundField DataField="city" HeaderText="CITY" />
                        <asp:BoundField DataField="sex" HeaderText="SEX" />
                        <asp:BoundField DataField="contact" HeaderText="CONTACT" />
                        </Columns>
                </asp:GridView>
                        
                        </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
