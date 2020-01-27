<%@ Page   MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="AdMiN.aspx.cs" Inherits="WebApplication4.WebForm1" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel" >
        <asp:Panel ID="Panel1" runat="server" Height="215px" ScrollBars="Auto">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="TABLE_NAME" DataValueField="TABLE_NAME" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kierownicy" />
            <asp:Button ID="Button2" runat="server" Text="Wolen Etaty" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Ilość rozmów podczas dnii" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Pracownicy w działach" OnClick="Button4_Click" />
            <br />
            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="true" Visible="false" DataKeyNames="idP" DataSourceID="SqlDataSource1" DataMember="DefaultView">
                <Columns>
                    <asp:BoundField DataField="idP" HeaderText="idP" ReadOnly="True" SortExpression="idP" />
                    <asp:BoundField DataField="imieP" HeaderText="imieP" SortExpression="imieP" />
                    <asp:BoundField DataField="nazwiskoP" HeaderText="nazwiskoP" SortExpression="nazwiskoP" />
                    <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                    <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [kierownicy1]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [PracDzial]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [WolneEt]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" SelectCommand="SELECT * FROM [rozmPerDzien]"></asp:SqlDataSource>
        </asp:Panel>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableFlattening="False" EntitySetName="TABELEs" EntityTypeFilter="TABELE">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView1" Visible="False"  runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataSourceID="SqlDataSource11"  >
            <Fields>
                <asp:BoundField DataField="idP" HeaderText="idP" InsertVisible="False" SortExpression="idP" />
                <asp:BoundField DataField="imieP" HeaderText="imieP" SortExpression="imieP" />
                <asp:BoundField DataField="nazwiskoP" HeaderText="nazwiskoP" SortExpression="nazwiskoP" />
                <asp:BoundField DataField="miastoP" HeaderText="miastoP" SortExpression="miastoP" />
                <asp:BoundField DataField="adresP" HeaderText="adresP" SortExpression="adresP" />
                <asp:BoundField DataField="nrTelP" HeaderText="nrTelP" SortExpression="nrTelP" />
                <asp:BoundField DataField="placaP" HeaderText="placaP" SortExpression="placaP" />
                <asp:BoundField DataField="idD" HeaderText="idD" SortExpression="idD" />
                <asp:BoundField DataField="idS" HeaderText="idS" SortExpression="idS" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Pracownicy] WHERE [idP] = @idP" InsertCommand="INSERT INTO [Pracownicy] ([idP], [imieP], [nazwiskoP], [miastoP], [adresP], [nrTelP], [placaP]) VALUES ((SELECT MAX(idP)+1 FROM Pracownicy), @imieP, @nazwiskoP, @miastoP, @adresP, @nrTelP, @placaP)
INSERT INTO [Prac_dzial] ([idP], [idD]) VALUES ((SELECT MAX(idP) FROM Pracownicy), @idD)
INSERT INTO [stan_prac] ([idP], [idS]) VALUES ((SELECT MAX(idP) FROM Pracownicy), @idS)" SelectCommand="SELECT p.*,dp.idD,sp.idS FROM Pracownicy p, Prac_dzial dp,stan_prac sp" UpdateCommand="UPDATE [Pracownicy] SET [imieP] = @imieP, [nazwiskoP] = @nazwiskoP, [miastoP] = @miastoP, [adresP] = @adresP, [nrTelP] = @nrTelP, [placaP] = @placaP WHERE [idP] = @idP">
            <DeleteParameters>
                <asp:Parameter Name="idP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="imieP" Type="String" />
                <asp:Parameter Name="nazwiskoP" Type="String" />
                <asp:Parameter Name="miastoP" Type="String" />
                <asp:Parameter Name="adresP" Type="String" />
                <asp:Parameter Name="nrTelP" Type="String" />
                <asp:Parameter Name="placaP" Type="Double" />
                <asp:Parameter Name="idD" />
                <asp:Parameter Name="idS" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="imieP" Type="String" />
                <asp:Parameter Name="nazwiskoP" Type="String" />
                <asp:Parameter Name="miastoP" Type="String" />
                <asp:Parameter Name="adresP" Type="String" />
                <asp:Parameter Name="nrTelP" Type="String" />
                <asp:Parameter Name="placaP" Type="Double" />
                <asp:Parameter Name="idP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
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
        
        <asp:DetailsView ID="DetailsView2" Visible="False"  runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idD" DataSourceID="SqlDataSource10"  >
            <Fields>
                <asp:BoundField DataField="idD" HeaderText="idD" ReadOnly="True" SortExpression="idD" InsertVisible="False" />
                <asp:BoundField DataField="nazwaD" HeaderText="nazwaD" SortExpression="nazwaD" />
                <asp:BoundField DataField="miastoD" HeaderText="miastoD" SortExpression="miastoD" />
                <asp:BoundField DataField="adresD" HeaderText="adresD" SortExpression="adresD" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Dzialy] WHERE [idD] = @idD" InsertCommand="INSERT INTO [Dzialy] ([idD], [nazwaD], [miastoD], [adresD]) VALUES ((SELECT MAX(idD)+1 FROM Dzialy), @nazwaD, @miastoD, @adresD)" SelectCommand="SELECT * FROM [Dzialy]" UpdateCommand="UPDATE [Dzialy] SET [nazwaD] = @nazwaD, [miastoD] = @miastoD, [adresD] = @adresD WHERE [idD] = @idD">
            <DeleteParameters>
                <asp:Parameter Name="idD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nazwaD" Type="String" />
                <asp:Parameter Name="miastoD" Type="String" />
                <asp:Parameter Name="adresD" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwaD" Type="String" />
                <asp:Parameter Name="miastoD" Type="String" />
                <asp:Parameter Name="adresD" Type="String" />
                <asp:Parameter Name="idD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
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
        
        <asp:DetailsView ID="DetailsView3"  Visible="False" runat="server" AutoGenerateRows="False" Height="50px" Width="267px" DataKeyNames="idO" DataSourceID="SqlDataSource5"  >
            <Fields>
                <asp:BoundField DataField="idO" HeaderText="idO" SortExpression="idO" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="idS" HeaderText="idS" SortExpression="idS" />
                <asp:BoundField DataField="idD" HeaderText="idD" SortExpression="idD" />
                <asp:TemplateField HeaderText="dataWystaw" SortExpression="dataWystaw">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dataWystaw") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar4" runat="server" SelectedDate='<%# Bind("dataWystaw") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("dataWystaw") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Oferty] WHERE [idO] = @idO" InsertCommand="INSERT INTO [Oferty] ([idO], [idS], [idD], [dataWystaw]) VALUES ((SELECT MAX(idO)+1 FROM Oferty), @idS, @idD, @dataWystaw)" SelectCommand="SELECT * FROM [Oferty]" UpdateCommand="UPDATE [Oferty] SET [idS] = @idS, [idD] = @idD, [dataWystaw] = @dataWystaw WHERE [idO] = @idO">
            <DeleteParameters>
                <asp:Parameter Name="idO" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idS" Type="Int32" />
                <asp:Parameter Name="idD" Type="Int32" />
                <asp:Parameter Name="dataWystaw" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="idS" Type="Int32" />
                <asp:Parameter Name="idD" Type="Int32" />
                <asp:Parameter Name="dataWystaw" Type="DateTime" />
                <asp:Parameter Name="idO" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:GridView ID="GridView3" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idO" DataSourceID="EntityDataSource4" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idO" HeaderText="idO" ReadOnly="True" SortExpression="idO" />
                <asp:BoundField DataField="idS" HeaderText="idS" SortExpression="idS" />
                <asp:BoundField DataField="idD" HeaderText="idD" SortExpression="idD" />
                <asp:TemplateField HeaderText="dataWystaw" SortExpression="dataWystaw">
                    <EditItemTemplate>
                        <asp:Calendar ID="Calendar3" runat="server" SelectedDate='<%# Bind("dataWystaw") %>'></asp:Calendar>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("dataWystaw", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
           
            <EmptyDataTemplate>
                <asp:Calendar ID="Calendar1" runat="server" Enabled='<%# Eval("dataWystaw") %>' SelectedDate='<%# Eval("dataWystaw") %>' Visible='<%# Eval("dataWystaw") %>' VisibleDate='<%# Eval("dataWystaw") %>'></asp:Calendar>
            </EmptyDataTemplate>
           
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Oferties" EntityTypeFilter="Oferty" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView4"  Visible="False" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idS" DataSourceID="SqlDataSource9"  >
            <Fields>
                <asp:BoundField DataField="idS" HeaderText="idS" ReadOnly="True" SortExpression="idS" InsertVisible="False" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Stanowiska] WHERE [idS] = @idS" InsertCommand="INSERT INTO [Stanowiska] ([idS], [nazwa]) VALUES ((SELECT MAX(idS)+1 FROM Stanowiska), @nazwa)" SelectCommand="SELECT * FROM [Stanowiska]" UpdateCommand="UPDATE [Stanowiska] SET [nazwa] = @nazwa WHERE [idS] = @idS">
            <DeleteParameters>
                <asp:Parameter Name="idS" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nazwa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa" Type="String" />
                <asp:Parameter Name="idS" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:GridView ID="GridView4" Visible="False" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idS" DataSourceID="EntityDataSource5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idS" HeaderText="idS" ReadOnly="True" SortExpression="idS" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=kadryEntities" DefaultContainerName="kadryEntities" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="Stanowiskas" EntityTypeFilter="Stanowiska" EnableInsert="True">
        </asp:EntityDataSource>
        
        <asp:DetailsView ID="DetailsView5" Visible="False"  runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idR" DataSourceID="SqlDataSource6"  >
            <Fields>
                <asp:BoundField DataField="idR" HeaderText="idR" ReadOnly="True" SortExpression="idR" InsertVisible="False" />
                <asp:BoundField DataField="idP" HeaderText="idP" SortExpression="idP" />
                <asp:BoundField DataField="idPo" HeaderText="idPo" SortExpression="idPo" />
                <asp:TemplateField HeaderText="dataRozmowy" SortExpression="dataRozmowy">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dataRozmowy") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar7" runat="server" SelectedDate='<%# Bind("dataRozmowy") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("dataRozmowy") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Rozmowy] WHERE [idR] = @idR" InsertCommand="INSERT INTO [Rozmowy] ([idR], [idP], [idPo], [dataRozmowy]) VALUES ((SELECT MAX(idR)+1 FROM Rozmowy), @idP, @idPo, @dataRozmowy)" SelectCommand="SELECT * FROM [Rozmowy]" UpdateCommand="UPDATE [Rozmowy] SET [idP] = @idP, [idPo] = @idPo, [dataRozmowy] = @dataRozmowy WHERE [idR] = @idR">
            <DeleteParameters>
                <asp:Parameter Name="idR" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idP" Type="Int32" />
                <asp:Parameter Name="idPo" Type="Int32" />
                <asp:Parameter Name="dataRozmowy" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="idP" Type="Int32" />
                <asp:Parameter Name="idPo" Type="Int32" />
                <asp:Parameter Name="dataRozmowy" Type="DateTime" />
                <asp:Parameter Name="idR" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
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
        
        <asp:DetailsView ID="DetailsView6"  Visible="False" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idPo" DataSourceID="SqlDataSource7"  >
            <Fields>
                <asp:BoundField DataField="idPo" HeaderText="idPo" ReadOnly="True" SortExpression="idPo" InsertVisible="False" Visible="False" />
                <asp:BoundField DataField="idR" HeaderText="idR" SortExpression="idR" />
                <asp:BoundField DataField="idO" HeaderText="idO" SortExpression="idO" />
                <asp:BoundField DataField="imiePo" HeaderText="imiePo" SortExpression="imiePo" />
                <asp:BoundField DataField="nazwiskoPo" HeaderText="nazwiskoPo" SortExpression="nazwiskoPo" />
                <asp:BoundField DataField="miasto" HeaderText="miasto" SortExpression="miasto" />
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                <asp:TemplateField HeaderText="dataUrPo" SortExpression="dataUrPo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dataUrPo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar5" runat="server" SelectedDate='<%# Bind("dataUrPo") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("dataUrPo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="wyksztalceniePo" HeaderText="wyksztalceniePo" SortExpression="wyksztalceniePo" />
                <asp:TemplateField HeaderText="dataZlozPo" SortExpression="dataZlozPo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dataZlozPo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar6" runat="server" SelectedDate='<%# Bind("dataZlozPo") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("dataZlozPo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Podania] WHERE [idPo] = @idPo" InsertCommand="INSERT INTO [Podania] ([idPo], [idR], [idO], [imiePo], [nazwiskoPo], [miasto], [adres], [dataUrPo], [wyksztalceniePo], [dataZlozPo]) VALUES ((SELECT MAX(idPo)+1 FROM Podania), @idR, @idO, @imiePo, @nazwiskoPo, @miasto, @adres, @dataUrPo, @wyksztalceniePo, @dataZlozPo)" SelectCommand="SELECT * FROM [Podania]" UpdateCommand="UPDATE [Podania] SET [idR] = @idR, [idO] = @idO, [imiePo] = @imiePo, [nazwiskoPo] = @nazwiskoPo, [miasto] = @miasto, [adres] = @adres, [dataUrPo] = @dataUrPo, [wyksztalceniePo] = @wyksztalceniePo, [dataZlozPo] = @dataZlozPo WHERE [idPo] = @idPo">
            <DeleteParameters>
                <asp:Parameter Name="idPo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idR" Type="Int32" />
                <asp:Parameter Name="idO" Type="Int32" />
                <asp:Parameter Name="imiePo" Type="String" />
                <asp:Parameter Name="nazwiskoPo" Type="String" />
                <asp:Parameter Name="miasto" Type="String" />
                <asp:Parameter Name="adres" Type="String" />
                <asp:Parameter Name="dataUrPo" Type="DateTime" />
                <asp:Parameter Name="wyksztalceniePo" Type="String" />
                <asp:Parameter Name="dataZlozPo" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="idR" Type="Int32" />
                <asp:Parameter Name="idO" Type="Int32" />
                <asp:Parameter Name="imiePo" Type="String" />
                <asp:Parameter Name="nazwiskoPo" Type="String" />
                <asp:Parameter Name="miasto" Type="String" />
                <asp:Parameter Name="adres" Type="String" />
                <asp:Parameter Name="dataUrPo" Type="DateTime" />
                <asp:Parameter Name="wyksztalceniePo" Type="String" />
                <asp:Parameter Name="dataZlozPo" Type="DateTime" />
                <asp:Parameter Name="idPo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        
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
        
        <asp:DetailsView ID="DetailsView7" Visible="False" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataSourceID="SqlDataSource8" DataKeyNames="uId"  >
            <Fields>
                <asp:TemplateField HeaderText="uId" InsertVisible="False" SortExpression="uId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("uId") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uId") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("uId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [AppUsers] WHERE [uId] = @uId" InsertCommand="INSERT INTO [AppUsers] ([uId], [login], [password], [Role]) VALUES ((SELECT MAX(uId)+1 FROM AppUsers), @login, @password, @Role)" SelectCommand="SELECT * FROM [AppUsers]" UpdateCommand="UPDATE [AppUsers] SET [login] = @login, [password] = @password, [Role] = @Role WHERE [uId] = @uId">
            <DeleteParameters>
                <asp:Parameter Name="uId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="login" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="login" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="uId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
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

