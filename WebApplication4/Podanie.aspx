<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master"  CodeBehind="Podanie.aspx.cs" Inherits="WebApplication4.Podanie" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
            
        <div class="col-md-4">

        <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" Height="50px" Width="266px" DataKeyNames="idPo" DataSourceID="SqlDataSource1" OnItemInserted="DetailsView6_ItemInserted"   >
            <Fields>
                <asp:CommandField NewText="Dodaj się" ShowInsertButton="True" />
                <asp:BoundField DataField="idPo" HeaderText="idPo" ReadOnly="True" SortExpression="idPo" InsertVisible="False" />
                <asp:BoundField DataField="idR" HeaderText="idR" SortExpression="idR" InsertVisible="False" />
                <asp:BoundField DataField="idO" HeaderText="idOferty" SortExpression="idO" />
                <asp:BoundField DataField="imiePo" HeaderText="imiePo" SortExpression="imiePo" />
                <asp:BoundField DataField="nazwiskoPo" HeaderText="nazwiskoPo" SortExpression="nazwiskoPo" />
                <asp:BoundField DataField="miasto" HeaderText="miasto" SortExpression="miasto" />
                <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                <asp:TemplateField HeaderText="dataUrPo" SortExpression="dataUrPo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dataUrPo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar7" runat="server" SelectedDate='<%# Bind("dataUrPo") %>'></asp:Calendar>
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
                        <asp:Calendar ID="Calendar8" runat="server" SelectedDate='<%# Bind("dataZlozPo") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("dataZlozPo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kadryConnectionString %>" DeleteCommand="DELETE FROM [Podania] WHERE [idPo] = @idPo" InsertCommand="INSERT INTO [Podania] ([idPo], [idR], [idO], [imiePo], [nazwiskoPo], [miasto], [adres], [dataUrPo], [wyksztalceniePo], [dataZlozPo]) VALUES ((SELECT MAX(idPo)+1 FROM Podania), @idR, @idO, @imiePo, @nazwiskoPo, @miasto, @adres, @dataUrPo, @wyksztalceniePo, @dataZlozPo)" SelectCommand="SELECT * FROM [Podania]" UpdateCommand="UPDATE [Podania] SET [idR] = @idR, [idO] = @idO, [imiePo] = @imiePo, [nazwiskoPo] = @nazwiskoPo, [miasto] = @miasto, [adres] = @adres, [dataUrPo] = @dataUrPo, [wyksztalceniePo] = @wyksztalceniePo, [dataZlozPo] = @dataZlozPo WHERE [idPo] = @idPo">
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

           </div>
    </div>

</asp:Content>

