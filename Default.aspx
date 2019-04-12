<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webapplication._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>school atendance</title>
    <style>
        body
        {
        	
         background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
        }
    .style
    {
    	text-align:center;
    	padding-top:0%;
    	font-weight:bold;
    	font-size:100%;
    	
    }
    p
    {
    	text-align:center;
    	padding-top:.2%;
    	font-weight:bold;
    }
    .size
    {
    	font-size:20px;
    	 position:relative;
    	  padding-bottom: 20px;
    	  color:Black;
    	  
    }
    img {
  position:absolute;
  filter: blur(1px);
  -webkit-filter: blur(1px);
  left: 0px;
  top: 0px;
  z-index: -1;
  height:100%;
  width:100%;
 
  
}
marquee
{
	height:8%;
	text-align:center;
}
h1
{
	font-size:50px;
	}
        .style1
        {
            left: 0px;
            top: 0px;
        }
    </style>
    
</head>

<body class="style">
<div class="mar">
<marquee bgcolor="pink"  width="100%" height="50px" text-align="center"behaviour="alternate"><h1><strong>Government High School</strong></h1></marquee>
</div> 


    <form id="form1" runat="server">
    <div class=" size">
    <img src="https://www.winger-tatamotors.com/images/winger-passenger/products/tata-winger-school/tata-winger-school-banner.jpg" 
            alt="school" class="style1" />
    <label  for="year">Acadamic Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
        &nbsp;<asp:TextBox ID="txt_year" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox><p></p>
       
    <label for="student">Student Name&nbsp; </label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_name" style="text-align:center;" Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox><p></p>
    <label for="dob">Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
        <asp:TextBox ID="txt_dateofbirth" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox><p></p>
        </label>
        <label for="Gender">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Textbox ID="txt_gender" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:Textbox><p></p>
        <label for="Class">Class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_class" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox> </label><p></p>
        <label for="Admission">Admission No. 
        <label for="Class">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_admission" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server" 
            ontextchanged="txt_admission_TextChanged"></asp:TextBox> </label> </label><p></p>
        
        </label>
        <label for="Roll">Roll Number<label for="Class">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_rollno" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox> </label> </label><p></p>
        <label for="fname">Father's Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        <label for="Class">
        <asp:TextBox ID="txt_father" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox> </label> </label><p></p>
        <label for="Mname">Mothere's Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        <label for="Class">
        <asp:TextBox ID="txt_mother" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox> </label> </label><p></p>
          <label for="Contact">Contact Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
        <label for="Class">
        <asp:TextBox ID="txt_contact" style="text-align:center;"   Font-Size="28px" height="30px" width="400px" runat="server"></asp:TextBox> 
        <br />
        <br />
        <br />
&nbsp;
        <asp:Button ID="btn_save" height="30px"      runat="server" onclick="btn_save_Click" Text="SAVE" 
            Width="138px" />
        <br />
        </label> </label>
        
     
    </div>
   
    
    </form>
</body>
</html>
