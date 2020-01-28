<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="lead">
            login do gościa guest hasło 111<asp:Login ID="Login1" runat="server"  OnAuthenticate="Login1_Authenticate" LoginButtonText="Zaloguj" PasswordLabelText="Hasło:" RememberMeText="Zapamiętaj dane." TitleText="Zaloguj się" UserNameLabelText="Login:"></asp:Login>
            
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
