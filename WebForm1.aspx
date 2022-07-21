<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        body{
            background-color:#161616;
        }

        h2{
            text-align:center;
            color:#F6E3C5;
            font-weight:bold;
        }
        .Form{
           border-radius:30px;
           background-color:azure;
           text-align:center;
           margin:70px 270px 70px 270px;
           padding:10px;
        }
        table.tblForm{
            margin-left:auto;
            margin-right:auto;
            text-align:left;
        }

        td{
            padding:30px;
        }


        .List{
            border-radius:5px;
            border:solid 1px;
            height:30px;
            width:70px;
        }
        

        .StatusLabel{
            font-family:'Times New Roman', Times, serif;
            font-size:25px;
            font-weight:bold;
            color:green;
        }
        
    </style>
    
    <title></title>
</head>
<body>
     <h2>Registration Form</h2>
    <form id="form1" runat="server">
        <div class="Form">
            <table class="tblForm">

                <tr>
                    <td>
                        <asp:Label ID="lblRollNo" runat="server" Text="Roll Number" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextRollNo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Roll Number is Required" 
                            ControlToValidate="TextRollNo" Display="Dynamic" ForeColor="Red"
                            ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Numbers Only" 
                            ControlToValidate="TextRollNo" ValidationExpression="\d+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                
                    <td>
                        <asp:Label ID="lblFname" runat="server" Text="First Name" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextFname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name is Required"  ControlToValidate="TextFname" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Characters Only" ControlToValidate="TextFname" ValidationExpression="[a-zA-Z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="lblMname" runat="server" Text="Middle Name" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextMname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Middle Name is Required"  ControlToValidate="TextMname" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Characters Only" ControlToValidate="TextMname" ValidationExpression="[a-zA-Z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>

                    <td>
                        <asp:Label ID="lblLname" runat="server" Text="Last Name" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextLname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Last Name is Required"  ControlToValidate="TextLname" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Characters Only" ControlToValidate="TextLname" ValidationExpression="[a-zA-Z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                 <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="Gender" CssClass="form-check-label"></asp:Label>
                    </td>
                    <td >
                        <asp:RadioButton ID="TextMale" runat="server" Text="Male" GroupName="Gender" CssClass="form-check-input" />
                        <br />
                        <br />
                        
                        <asp:RadioButton ID="TextFemale" runat="server" Text="Female" GroupName="Gender" CssClass="form-check-input" />
                    </td>
                </tr>
               

                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email ID" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email ID is Required"  ControlToValidate="TextEmail" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="TextEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
         
                    <td>
                        <asp:Label ID="lblPhoneNo" runat="server" Text="Mobile Number" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextPhoneNo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mobile Number is Required"  ControlToValidate="TextPhoneNo" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Enter Correct Mobile Number" ControlToValidate="TextPhoneNo" ValidationExpression="\d{10}" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblQualification" runat="server" Text="Qualification" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:DropDownList ID="DDLQualification" CssClass="List" runat="server" >
                            <asp:ListItem Value="" Text="Select"></asp:ListItem>
                            <asp:ListItem Text="BTech"></asp:ListItem>
                            <asp:ListItem Text="BE"></asp:ListItem>
                            <asp:ListItem Text="ME"></asp:ListItem>
                            <asp:ListItem Text="MTech"></asp:ListItem>
                            <asp:ListItem Text="Diploma"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Qualification is Required"  ControlToValidate="DDLQualification" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                
                    <td >
                        <asp:Label ID="lblBranch" runat="server" Text="Stream" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:DropDownList ID="DDLBranch" CssClass="List" runat="server" >  
                            <asp:ListItem Value="" Text="Select"></asp:ListItem>
                            <asp:ListItem Text="E&TC"></asp:ListItem>
                             <asp:ListItem Text="ELECTRICAL"></asp:ListItem>
                            <asp:ListItem Text="IT"></asp:ListItem>
                            <asp:ListItem Text="CS"></asp:ListItem>
                            <asp:ListItem Text="MECH"></asp:ListItem>
                            <asp:ListItem Text="CIVIL"></asp:ListItem>
                            <asp:ListItem Text="AUTOMOBILE"></asp:ListItem>
                             <asp:ListItem Text="DDGM"></asp:ListItem>
                             <asp:ListItem Text="IDD"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Branch is Required"  ControlToValidate="DDLBranch" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                    </td>
                </tr>

                 <tr>
                    <td>
                        <asp:Label ID="lblCity" runat="server" Text="City" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextCity" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="City is Required"  ControlToValidate="TextCity" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter Valid City" ControlToValidate="TextCity" ValidationExpression="[a-zA-Z]+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>

                    <td>
                        <asp:Label ID="lblPincode" runat="server" Text="Pincode" CssClass="form-check-label"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="TextPincode" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Pincode is Required"  ControlToValidate="TextPincode" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Enter Valid Pincode" ControlToValidate="TextPincode" ValidationExpression="\d+" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>

            <br />
            <br />

            <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-success"/>

            <br />
            <br />

            <asp:Label ID="Status" runat="server" CssClass="StatusLabel"></asp:Label>
              <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
