
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="guest.aspx.cs" Inherits="WebApplication4.guest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
            
        <div class="col-md-4">
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource5" DataTextField="TABLE_NAME" DataValueField="TABLE_NAME" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="TABELEs" EntityTypeFilter="TABELE">
                </asp:EntityDataSource>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Wolen Etaty" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Złuż podanie" />
                <br />
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataMember="DefaultView" DataSourceID="SqlDataSource1" Visible="False" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                        <asp:BoundField DataField="miastoD" HeaderText="miastoD" SortExpression="miastoD" />
                        <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="WolneEtaty" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <br />
            </asp:Panel>
           
        </div>
         <asp:GridView ID="GridView1" Visible="false" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idD" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:BoundField DataField="idD" HeaderText="idD" ReadOnly="True" SortExpression="idD" />
                    <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                    <asp:BoundField DataField="miastoD" HeaderText="miastoD" SortExpression="miastoD" />
                    <asp:BoundField DataField="adresD" HeaderText="adresD" SortExpression="adresD" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="Dzialies" EntityTypeFilter="Dzialy">
            </asp:EntityDataSource>
            <asp:GridView ID="GridView2" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idO" DataSourceID="EntityDataSource2">
                <Columns>
                    <asp:BoundField DataField="idO" HeaderText="idO" ReadOnly="True" SortExpression="idO" />
                    <asp:BoundField DataField="idS" HeaderText="idS" SortExpression="idS" />
                    <asp:BoundField DataField="idD" HeaderText="idD" SortExpression="idD" />
                    <asp:BoundField DataField="dataWystaw" HeaderText="dataWystaw" SortExpression="dataWystaw" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="Oferties" EntityTypeFilter="Oferty">
            </asp:EntityDataSource>
            <asp:GridView ID="GridView3" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idS" DataSourceID="EntityDataSource3">
                <Columns>
                    <asp:BoundField DataField="idS" HeaderText="idS" ReadOnly="True" SortExpression="idS" />
                    <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="Stanowiskas" EntityTypeFilter="Stanowiska">
            </asp:EntityDataSource>
            <asp:GridView ID="GridView4"  Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idR" DataSourceID="EntityDataSource4">
                <Columns>
                    <asp:BoundField DataField="idR" HeaderText="idR" ReadOnly="True" SortExpression="idR" />
                    <asp:BoundField DataField="idP" HeaderText="idP" SortExpression="idP" />
                    <asp:BoundField DataField="idPo" HeaderText="idPo" SortExpression="idPo" />
                    <asp:BoundField DataField="dataRozmowy" HeaderText="dataRozmowy" SortExpression="dataRozmowy" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="Rozmowies" EntityTypeFilter="Rozmowy">
            </asp:EntityDataSource>
    </div>

</asp:Content>

