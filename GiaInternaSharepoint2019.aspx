<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=16.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>

<%--  INTERNA  --%>
<asp:Content ContentPlaceHolderId="PlaceHolderMein" runat="server">
	<div id="titulo-interna">
		<div class="container">
			<div class="textos-titulo-interna pt-5">
				<h1>
					<strong>
						<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
					</strong>
				</h1>
        				<div class="migadepan">
        					<i class="fa fa-home" aria-hidden="true"></i>
    					<asp:SiteMapPath runat="server" SiteMapProviders="SPSiteMapProvider,SPXmlContentMapProvider" 
						RenderCurrentNodeAsLink="false" HideInteriorRootNodes="true" NodeStyle-CssClass="crumb" CurrentNodeStyle-CssClass="active" 
						RootNodeStyle-CssClass="crumb" SkipLinkText="" PathSeparator=" / " PathSeparatorStyle-CssClass="crumb-sep">
					</asp:SiteMapPath>
        				</div>
			</div>
		</div>
	</div>
	<div id="interna" class="pt-5 pb-5">
       		<div class="container">
	        		<div class="row">
	        			<div class="col-12">
	        				<WebPartPages:WebPartZone id="superior" runat="server" title="Zona 1"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
	        			</div>
	            		<div class="col-md-8">
	            			<WebPartPages:WebPartZone id="inferior" runat="server" title="Zona 2"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>	            	
	            		</div>
	            		<div class="col-md-4">
	            			<PublishingWebControls:RichImageField FieldName="PublishingPageImage" runat="server"/>
	            		</div>
	            		<div class="col-md-12">
	            			<WebPartPages:WebPartZone id="medio" runat="server" title="Zona 3"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>	            	
	            		</div>
	       		 </div>
      		 </div>
	</div>
</asp:Content>




