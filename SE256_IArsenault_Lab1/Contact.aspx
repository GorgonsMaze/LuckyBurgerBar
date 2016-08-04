<%@ Page Title="" Language="C#" MasterPageFile="~/Responsive.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SE256_IArsenault_Lab1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
         <h1>Contact Us!</h1>
             <%-- Button trigger modal --%>
        <button type="button" class="btn btn-default btn-lg" id="mbtn1" data-toggle="modal" data-target="#myModal">Contact Us
        <span class="glyphicon glyphicon-send" aria-hidden="true"></span>
        </button>

         <%--Modal--%>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
           <div class="modal-dialog" role="document">
               <div class="modal-content">
                   <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                       <h4 class="modal-title" id="myModalLabel">Send us a message!</h4>
                   </div>
                   <div class="modal-body">

                       <form class="openSans">
                           <div class="form-group">
                               <label for="exampleInputEmail1">Name</label>
                               <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Name">
                           </div>
                           <div class="form-group">
                               <label for="exampleInputEmail1">Email address</label>
                               <input type="email" class="form-control" id="exampleInputEmail1" placeholder="yourname@example.com">
                           </div>
                           <div class="form-group">
                               <label for="textArea1">Message</label>
                               <textarea id="textArea1"  class="form-control" rows="6" placeholder="Type your message here..."></textarea>
                               <%--<input type="text" class="form-control" rows="6" placeholder="Type your message here.....">--%>
                           </div>
                       </form>
                   </div>
                   <div class="modal-footer">
                       <%--<button type="button" class="btn btn-default" data-dismiss="modal">Send</button>--%>
                       <button type="button" class="btn btn-danger">Send</button>
                   </div>
               </div>
           </div>
        </div>
    </div>
</asp:Content>
