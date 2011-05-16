<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForcedPostBack.aspx.cs" Inherits="ForcedPostBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="upTopMain" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnForce" />
                </Triggers>
                <ContentTemplate>
                    <asp:Button ID="btnForce" runat="server" Text="Start" OnClick="btnForce_Click" />
                    <style type="text/css">
  
.modalBackground {
	background-color:Gray;
	z-index:0;
	position:absolute;
	left:0;
	height:0;
	filter:alpha(opacity=70);
	opacity:0.7;	
}
.modalPopup {
	background-color:#ffffff;
	border-width:3px;
	border-style:solid;
 	border-color:Gray;
	padding:3px;
	width:400px;
	
	
}
</style>

 

<asp:UpdatePanel ID="upMain" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:LinkButton ID="lbHidden" runat="server"></asp:LinkButton>
        <div id="divPopup" runat="server">
            <div id="divInner" runat="server" class="modalPopup" visible="false">
              <asp:UpdatePanel ID="upInner" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            Something
                            <asp:Button ID="btnClose" runat="server" Text="Close" OnClick="btnClose_Click" />
                            <asp:Timer ID="time1" runat="server" Enabled="false" Interval="300" OnTick="ticked" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
            </div>
        </div>
        <asp:ModalPopupExtender runat="server" ID="ModalPopupExtender1" BackgroundCssClass="modalBackground"
            PopupControlID="divPopup" DropShadow="false" TargetControlID="lbHidden" />
       </ContentTemplate>
</asp:UpdatePanel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="upProgress" runat="server">
                <ProgressTemplate>
                    ...</ProgressTemplate>
            </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
