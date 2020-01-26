<%@ Page   MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="AdMiN.aspx.cs" Inherits="WebApplication4.WebForm1" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel" >
        <asp:Panel ID="Panel1" runat="server" Height="205px" ScrollBars="Auto">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="TABLE_NAME" DataValueField="TABLE_NAME" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kierownicy" />
            <asp:Button ID="Button2" runat="server" Text="Wolen Etaty" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Ilość rozmów podczas dnii" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Pracownicy w działach" OnClick="Button4_Click" />
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="true" Visible="false" DataKeyNames="idP" DataSourceID="SqlDataSource1" DataMember="DefaultView">
                <Columns>
                    <asp:BoundField DataField="idP" HeaderText="idP" ReadOnly="True" SortExpression="idP" />
                    <asp:BoundField DataField="imieP" HeaderText="imieP" SortExpression="imieP" />
                    <asp:BoundField DataField="nazwiskoP" HeaderText="nazwiskoP" SortExpression="nazwiskoP" />
                    <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                    <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [kierownicy1]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [PracDzial]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [WolneEt]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [rozmPerDzien]"></asp:SqlDataSource>
        </asp:Panel>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="TABELEs" EntityTypeFilter="TABELE">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView1" Visible="false"  runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idP" DataSourceID="EntityDataSource2"  >
            <Fields>
                <asp:BoundField DataField="idP" HeaderText="idP" ReadOnly="True" SortExpression="idP" />
                <asp:BoundField DataField="imieP" HeaderText="imieP" SortExpression="imieP" />
                <asp:BoundField DataField="nazwiskoP" HeaderText="nazwiskoP" SortExpression="nazwiskoP" />
                <asp:BoundField DataField="miastoP" HeaderText="miastoP" SortExpression="miastoP" />
                <asp:BoundField DataField="adresP" HeaderText="adresP" SortExpression="adresP" />
                <asp:BoundField DataField="nrTelP" HeaderText="nrTelP" SortExpression="nrTelP" />
                <asp:BoundField DataField="placaP" HeaderText="placaP" SortExpression="placaP" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView1" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idP" DataSourceID="EntityDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idP" HeaderText="idP" ReadOnly="True" SortExpression="idP" />
                <asp:BoundField DataField="imieP" HeaderText="imieP" SortExpression="imieP" />
                <asp:BoundField DataField="nazwiskoP" HeaderText="nazwiskoP" SortExpression="nazwiskoP" />
                <asp:BoundField DataField="miastoP" HeaderText="miastoP" SortExpression="miastoP" />
                <asp:BoundField DataField="adresP" HeaderText="adresP" SortExpression="adresP" />
                <asp:BoundField DataField="nrTelP" HeaderText="nrTelP" SortExpression="nrTelP" />
                <asp:BoundField DataField="placaP" HeaderText="placaP" SortExpression="placaP" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Pracownicies" EntityTypeFilter="Pracownicy" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView2" Visible="false"  runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idD" DataSourceID="EntityDataSource3"  >
            <Fields>
                <asp:BoundField DataField="idD" HeaderText="idD" ReadOnly="True" SortExpression="idD" />
                <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                <asp:BoundField DataField="miastoD" HeaderText="miastoD" SortExpression="miastoD" />
                <asp:BoundField DataField="adresD" HeaderText="adresD" SortExpression="adresD" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView2" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idD" DataSourceID="EntityDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idD" HeaderText="idD" ReadOnly="True" SortExpression="idD" />
                <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                <asp:BoundField DataField="miastoD" HeaderText="miastoD" SortExpression="miastoD" />
                <asp:BoundField DataField="adresD" HeaderText="adresD" SortExpression="adresD" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Dzialies" EnableInsert="True" >
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView3"  Visible="false" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idO" DataSourceID="EntityDataSource4"  >
            <Fields>
                <asp:BoundField DataField="idO" HeaderText="idO" ReadOnly="True" SortExpression="idO" />
                <asp:BoundField DataField="idS" HeaderText="idS" SortExpression="idS" />
                <asp:BoundField DataField="idD" HeaderText="idD" SortExpression="idD" />
                <asp:BoundField DataField="dataWystaw" HeaderText="dataWystaw" SortExpression="dataWystaw" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView3" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idO" DataSourceID="EntityDataSource4" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idO" HeaderText="idO" ReadOnly="True" SortExpression="idO" />
                <asp:BoundField DataField="idS" HeaderText="idS" SortExpression="idS" />
                <asp:BoundField DataField="idD" HeaderText="idD" SortExpression="idD" />
                <asp:BoundField DataField="dataWystaw" HeaderText="dataWystaw" SortExpression="dataWystaw" />
            </Columns>
           
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Oferties" EntityTypeFilter="Oferty" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView4"  Visible="false" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idS" DataSourceID="EntityDataSource5"  >
            <Fields>
                <asp:BoundField DataField="idS" HeaderText="idS" ReadOnly="True" SortExpression="idS" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView4" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idS" DataSourceID="EntityDataSource5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idS" HeaderText="idS" ReadOnly="True" SortExpression="idS" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Stanowiskas" EntityTypeFilter="Stanowiska" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView5" Visible="false"  runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idR" DataSourceID="EntityDataSource6"  >
            <Fields>
                <asp:BoundField DataField="idR" HeaderText="idR" ReadOnly="True" SortExpression="idR" />
                <asp:BoundField DataField="idP" HeaderText="idP" SortExpression="idP" />
                <asp:BoundField DataField="idPo" HeaderText="idPo" SortExpression="idPo" />
                <asp:BoundField DataField="dataRozmowy" HeaderText="dataRozmowy" SortExpression="dataRozmowy" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView5" Visible="False" runat="server" AutoGenerateColumns="False" DataKeyNames="idR" DataSourceID="EntityDataSource6" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idR" HeaderText="idR" ReadOnly="True" SortExpression="idR" />
                <asp:BoundField DataField="idP" HeaderText="idP" SortExpression="idP" />
                <asp:BoundField DataField="idPo" HeaderText="idPo" SortExpression="idPo" />
                <asp:BoundField DataField="dataRozmowy" HeaderText="dataRozmowy" SortExpression="dataRozmowy" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource6" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Rozmowies" EntityTypeFilter="Rozmowy" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView6"  Visible="false" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idPo" DataSourceID="EntityDataSource7"  >
            <Fields>
                <asp:BoundField DataField="idPo" HeaderText="idPo" ReadOnly="True" SortExpression="idPo" />
                <asp:BoundField DataField="idR" HeaderText="idR" SortExpression="idR" />
                <asp:BoundField DataField="idO" HeaderText="idO" SortExpression="idO" />
                <asp:BoundField DataField="imiePo" HeaderText="imiePo" SortExpression="imiePo" />
                <asp:BoundField DataField="nazwiskoPo" HeaderText="nazwiskoPo" SortExpression="nazwiskoPo" />
                <asp:BoundField DataField="miasto" HeaderText="miasto" SortExpression="miasto" />
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                <asp:BoundField DataField="dataUrPo" HeaderText="dataUrPo" SortExpression="dataUrPo" />
                <asp:BoundField DataField="wyksztalceniePo" HeaderText="wyksztalceniePo" SortExpression="wyksztalceniePo" />
                <asp:BoundField DataField="dataZlozPo" HeaderText="dataZlozPo" SortExpression="dataZlozPo" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView6" Visible="False" runat="server" AutoGenerateColumns="False" DataKeyNames="idPo" DataSourceID="EntityDataSource7" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idPo" HeaderText="idPo" ReadOnly="True" SortExpression="idPo" />
                <asp:BoundField DataField="idR" HeaderText="idR" SortExpression="idR" />
                <asp:BoundField DataField="idO" HeaderText="idO" SortExpression="idO" />
                <asp:BoundField DataField="imiePo" HeaderText="imiePo" SortExpression="imiePo" />
                <asp:BoundField DataField="nazwiskoPo" HeaderText="nazwiskoPo" SortExpression="nazwiskoPo" />
                <asp:BoundField DataField="miasto" HeaderText="miasto" SortExpression="miasto" />
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                <asp:BoundField DataField="dataUrPo" HeaderText="dataUrPo" SortExpression="dataUrPo" />
                <asp:BoundField DataField="wyksztalceniePo" HeaderText="wyksztalceniePo" SortExpression="wyksztalceniePo" />
                <asp:BoundField DataField="dataZlozPo" HeaderText="dataZlozPo" SortExpression="dataZlozPo" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource7" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Podanias" EntityTypeFilter="Podania" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView7" Visible="false" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataSourceID="EntityDataSource8"  >
            <Fields>
                <asp:BoundField DataField="uId" HeaderText="uId" ReadOnly="True" SortExpression="uId" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:GridView ID="GridView7"  Visible="false" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="uId" DataSourceID="EntityDataSource8">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="uId" HeaderText="uId" ReadOnly="True" SortExpression="uId" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource8" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="AppUsers" EntityTypeFilter="AppUser">
        </asp:EntityDataSource>
        
        </div>
   
    
</asp:Content>

