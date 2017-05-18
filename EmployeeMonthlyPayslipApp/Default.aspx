<%@ Page Title="Main Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="_Default.aspx.cs" Inherits="EmployeeMonthlyPayslipApp.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mainTitle">
        <h1 class="text-center">Employee Payslip Generator</h1>
    </div>
    <div class="row">
        <div class="left-padding col-md-7">
            <h2>Please Enter Your Details: </h2>
        </div>
    </div>
    <div class="rowPadding"></div>
    <div class="row"> 
        <div class="col-md-12 text-center">
            <section id="detailsForm">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="FirstName" CssClass="left-padding col-md-4 control-label">First Name</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:TextBox runat="server" ID="FirstName" CssClass="form-control"/>
                            <!--<asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName" CssClass="text-danger" ErrorMessage="The First Name field is required." />-->
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="LastName" CssClass="left-padding col-md-4 control-label">Last Name</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:TextBox runat="server" ID="LastName" CssClass="form-control" />
                            <!--<asp:RequiredFieldValidator runat="server" ControlToValidate="LastName" CssClass="text-danger" ErrorMessage="The Last Name field is required." />-->
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="AnnualIncome" CssClass="left-padding col-md-4 control-label">Annual Income</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:TextBox runat="server" ID="AnnualIncome" CssClass="form-control" />
                            <!--<asp:RequiredFieldValidator runat="server" ControlToValidate="AnnualIncome" CssClass="text-danger" ErrorMessage="The Annual Salary field is required." />-->
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="SuperRate" CssClass="left-padding col-md-4 control-label">Super Rate</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:TextBox runat="server" ID="SuperRate" CssClass="form-control" />
                            <!--<asp:RequiredFieldValidator runat="server" ControlToValidate="SuperRate" CssClass="text-danger" ErrorMessage="The Annual Salary field is required." />-->
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="FinancialYear" CssClass="left-padding col-md-4 control-label">Financial Year</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:TextBox runat="server" ID="FinancialYear" CssClass="form-control" />
                            <!--<asp:RequiredFieldValidator runat="server" ControlToValidate="FinancialYear" CssClass="text-danger" ErrorMessage="The Financial Year field is required." />-->
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="MonthStarting" CssClass="left-padding col-md-4 control-label">Month Starting</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:TextBox runat="server" ID="MonthStarting" CssClass="form-control" />
                            <!--<asp:RequiredFieldValidator runat="server" ControlToValidate="MonthStarting" CssClass="text-danger" ErrorMessage="The Month Starting field is required." />-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="left-padding col-md-offset-1 col-md-10">
                            <asp:Button runat="server" Text="Generate Payslip" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <div class="rowPadding"></div>
    <div class="text-center">
        <div class="left-padding text-center col-md-10">
            <h2>------------------------------</h2>
            <h2>OR</h2>
        </div>
    </div>
    <div class="row">
        <div class="left-padding col-md-7">
            <h2>Import From File: </h2>
        </div>
    </div>
    <div class="rowPadding"></div>
     <div class="row"> 
        <div class="col-md-12 text-center">
            <section id="importForm">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label Font-Size="16px" runat="server" AssociatedControlID="FileUploader" CssClass="left-padding col-md-4 control-label">Select File</asp:Label>
                        <div class="left-padding col-md-8 form-group">
                            <asp:FileUpload Font-Size="16px" ID="FileUploader" runat="server" CssClass="form-control-file-upload" />
                        </div>
                        <div class="form-group">
                            <div class="left-padding col-md-offset-1 col-md-10">
                               <asp:Button ID="UploadButton" Text="Generate Payslip" runat="server" OnClick="UploadButton_Click" CssClass="btn btn-default"/>
                            </div>
                        </div>
                        <asp:Label Font-Size="16px" ID="UploadMessage" runat="server" CssClass="col-md-4 control-label"></asp:Label>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
