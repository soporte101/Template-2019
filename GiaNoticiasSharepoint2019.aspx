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
        					<i class="fas fa-home"></i>
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
		<div class="col-md-12">
				<div class="article article-left">
					<div class="captioned-image">
						<div class="ImgNoticia">
							<PublishingWebControls:RichImageField FieldName="PublishingPageImage" runat="server"/>
						</div>
						<div class="caption">
							<PublishingWebControls:RichHtmlField FieldName="PublishingImageCaption"  AllowTextMarkup="false" AllowTables="false" AllowLists="false" AllowHeadings="false" AllowStyles="false" AllowFontColorsMenu="false" AllowParagraphFormatting="false" AllowFonts="false" PreviewValueSize="Small" AllowInsert="false" AllowEmbedding="false" AllowDragDrop="false" runat="server"/>
						</div>
					</div>
					<div class="article-header">
						<span class="titulo" style=""><h3>
							<div class="ms-rteStyle-Subtitulo" style="text-transform:uppercase !important; line-height:30px !important;">
								<SharePointWebControls:UIVersionedContent UIVersion="4" runat="server">
									<ContentTemplate>
										<SharePointWebControls:FieldValue FieldName="Title" runat="server"/>
									</ContentTemplate>
								</SharePointWebControls:UIVersionedContent>
							</div></h3>
						</span>
						<div class="date-line">
							<SharePointWebControls:DateTimeField FieldName="ArticleStartDate" runat="server"/>
						</div>				
						<div class="by-line">
							<SharePointWebControls:TextField FieldName="ArticleByLine" runat="server"/>
						</div>
					</div>
					<div class="article-content">	   
						<PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>

<WebPartPages:WebPartZone id="g_BEBBBC4863D042618B7D4941F0D10FD8" runat="server" title="Zona 1"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
					<PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel roll-up"><PublishingWebControls:RichImageField FieldName="PublishingRollupImage" AllowHyperLinks="false" runat="server" />
						<asp:Label text="<%$Resources:cms,Article_rollup_image_text15%>" CssClass="ms-textSmall" runat="server" /></PublishingWebControls:EditModePanel>
				</div>
			</div>
		
</div>
</div>
</div>
</asp:Content>
