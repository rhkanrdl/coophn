<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:forEach items="${latestBoardItems}" var="item">

    <div>
        <a href="${moreLink}?boardId=${latestBoard.boardId}&boardItemId=${item.id}&menuId=${menuId}">
            <c:if test="${!empty item.fileList1}">
                <img src="/common/file/view.wp?attachId=${item.fileList1[0].atchFileId}&fileSn=${item.fileList1[0].fileSn}" alt="${item.fileList1[0].orignlFileNm}">
            </c:if>
           <!-- <i><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></i> -->
        </a>
        <h3>${item.title}</h3>
    </div>
</c:forEach>

