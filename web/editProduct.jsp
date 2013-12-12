<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<html>
	<head>
    	<title>Edit Product Page</title>
       	<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    <body>
		<f:view>
        	<%@ include file="header.jsp" %>
            <h:form id="editProductForm">
            	<table align="center" width="500">
            	    <tr>
            	    	<td></td>
              			<td align="left">
                    		<h:outputText value="Edit Product" styleClass="headerText"/>
                    	</td>
                	</tr>
                   	<tr>
            		    <td align="right" width="100">
            				<h:outputText value="Id"/>
            			</td>
            			<td align="left" width="400">
        					<h:outputText value="#{productBean.id}" id="id"/>
                   			<h:inputHidden value="#{productBean.id}" id="hiddenId"/>
                   		</td>
                   	</tr>
                   	</tr>
                	<tr>
                	    <td align="right" width="100">
            				<h:outputText value="Name"/>
            			</td>
            			<td align="left" width="400">
                   			<h:inputText value="#{productBean.name}" id="name" required="true"/>
                   			<h:message for="name" styleClass="errorMessage"/>
                   		</td>
              		</tr>
                	<tr>
                	    <td align="right" width="100">
            				<h:outputText value="Price ($)"/>
            			</td>
            			<td align="left" width="400">
                   			<h:inputText value="#{productBean.price}" id="price"/>
                   			<h:message for="price" styleClass="errorMessage"/>
                   		</td>                	
              		</tr>
                	<tr>
                	    <td align="right" width="100">
            				<h:outputText value="Width (inch)"/>
            			</td>
            			<td align="left" width="400">
                   			<h:inputText value="#{productBean.width}" id="width"/>
                   			<h:message for="width" styleClass="errorMessage"/>
                   		</td>  
              		</tr>
                	<tr>
                	    <td align="right" width="100">
            				<h:outputText value="Height (inch)"/>
            			</td>
            			<td align="left" width="400">
                   			<h:inputText value="#{productBean.height}" id="height"/>
                   			<h:message for="height" styleClass="errorMessage"/>
                   		</td>  
              		</tr>
                	<tr>
                	    <td align="right" width="100" valign="bottom">
            				<h:outputText value="Description"/>
            			</td>
            			<td align="left" width="400">
                   			<h:inputTextarea value="#{productBean.description}" id="description" rows="16" cols="32"/>
                   			<h:message for="description" styleClass="errorMessage"/>
                   		</td> 
              		</tr>        		
                	<tr>
                   	    <td align="right" width="100" valign="bottom">
 							<h:outputText value="Categories"/>
 						</td>
 						<td align="left" width="400">
							<h:selectManyListbox value="#{productBean.selectedCategoryIds}" id="selectedCategoryIds">
								<catalog:validateSelectedItemsRange minNum="1"/>
                        		<f:selectItems value="#{applicationBean.categorySelectItems}" id="categories"/>
                    		</h:selectManyListbox>
                    		<h:message for="selectedCategoryIds" styleClass="errorMessage"/>
                    	</td>
              		</tr>                    		
              		<tr>
               			<td align="center" colspan="2">
                    		<h:commandButton value="Update" action="#{productBean.updateAction}"/>
                    		<h:commandButton value="Cancel" action="cancel" immediate="true"/>
                  		</td>
              		</tr>
              		<tr >
              			<td align="left">
                    		<h:messages errorStyle="errorMessage" globalOnly="true"/>
                    	</td>
                	</tr>
          		</table>        
            </h:form>
            <%@ include file="footer.jsp" %>
        </f:view>
  	</body>
</html>