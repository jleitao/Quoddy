<!--  begin aseWrapper area -->

<div class="aseWrapper" id="aseWrapper.${item.uuid}">

	<g:if test="${item.streamObject.enhancementJSON != null}">
		<script class="enhancementJSON" id="enhancementJSON-${item.uuid}" type="text/javascript" language="javascript">
			${item.streamObject.enhancementJSON}
		</script>
	</g:if>
	
	<!-- begin aseAvatarBlock -->
	<div class="aseAvatarBlock">
		<img
			src="${createLink(controller:'profilePic',action:'thumbnail',id:item.owner.userId)}" />
	</div>
	<!-- end aseAvatarBlock -->
	
	<!-- begin aseTitleBar -->
	<div class="aseTitleBar">
		<!-- http://localhost:8080/quoddy/user/viewUser?userId=testuser2 -->
		<span class="aseTitleBarUserLink"> <a
			href="${createLink(controller:'user', action:'viewUser', params:[userId:item.owner.userId])}">
				${item.owner.fullName}</a>
		</span> 
		<span class="aseTitleBarPermalink">
		<g:link controller="permalink" action="index" params="${[uuid:item.uuid]}" title="${formatDate(date:item.dateCreated)}">
				<g:formatDate date="${item.dateCreated}" type="datetime" style="SHORT" timeStyle="SHORT" />
		</g:link>
		</span>
    
        <div class="commentButtonBar">
      		<span class="plusOneButton" id="plusOneButton.${item.uuid}" name="plusOneButton.${item.uuid}" >
        		<a href="#" class="btn">+1</a>
      		</span>
      		<span class="shareButton" id="shareButton.${item.uuid}" name="shareButton.${item.uuid}" >
        		<a href="#" class="btn">Share</a>
      		</span>
      		<span class="showHideCommentsButton">
        		<a href="#" class="btn">Hide Comments</a>
      		</span>
    	</div>
	</div>
	<!--  end aseTitleBar -->
	
	<!-- begin activityStreamEntry -->

	<div class="activityStreamEntry basicActivityStreamEntry">
		${item.content}
	</div>

	<!-- end activityStreamEntry -->

  <!-- begin aseClear -->
	<div class="aseClear" ></div>
	<!-- end aseClear -->
	
	<!-- begin aseFooter -->
	<div class="aseFooter">
	
		<!-- begin commentboxWrapper -->
		<div class="commentBoxWrapper">
			<!-- begin commentsArea -->
			<div id="commentsArea" class="commentsArea">
				
				<hr />
			
				<!--  render comments on the Event here -->
				<g:render template="/renderComments" var="comments"
					bean="${item.streamObject.comments}" />
			</div>
			<!-- end commentsArea -->
			
			<form name="addCommentForm" id="addCommentForm" class="addCommentForm">
        		
        		<!-- <label>Add a comment</label> -->
				<input name="addCommentTextInput" id="addCommentTextInput"
					class="addCommentTextInput" type="textbox" value="Add a Comment"></input>
				<br />
				<input name="eventId" type="hidden" value="${item.id}" /> <input
					name="submitCommentBtn" id="submitCommentBtn"
					class="btn submitCommentBtn" style="display: none;" type="submit"
					value="Submit" /> <input name="cancelCommentBtn"
					id="cancelCommentBtn" class="btn cancelCommentBtn"
					style="display: none;" type="submit" value="Cancel" />
			</form>
			<!--  end addCommentForm -->
			
		</div>
		<!--  end commentBoxWrapper -->
	</div>
	<!--  end aseFooter -->
	
</div>
<!-- end aseWrapper -->
