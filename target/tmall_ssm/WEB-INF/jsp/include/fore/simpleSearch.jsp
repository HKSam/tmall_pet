<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>

<div >
	<form action="foresearch" method="post" >
		<div class="simpleSearchDiv pull-right">
			<input type="text" placeholder="宠物猫 宠物狗"  value="${param.keyword}" name="keyword">
			<button class="searchButton" type="submit">搜宠物</button>
			<div class="searchBelow">
				<c:forEach items="${cs}" var="c" varStatus="st">
					<c:if test="${st.count>=1 and st.count<=2}">
					<span>
						<a href="forecategory?cid=${c.id}">
								${c.name}
						</a>
						<c:if test="${st.count!=2}">
							<span>|</span>
						</c:if>
					</span>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</form>
	<div style="clear:both"></div>
</div>