<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/admin_producy_upload.css">
</head>

<body>
    <div class="container">
    <jsp:include page="../include/main_header.jsp"></jsp:include>
        <form class="product-upload-content">
            <div class="product-category-btn">
                <input class="category-btn"  type="button" value="텀블러">
                <input class="category-btn"  type="button" value="콜드컵">
                <input class="category-btn"  type="button" value="보온병">
                <input class="category-btn"  type="button" value="워터보틀">
                <input class="category-btn"  type="button" value="머그,컵">
                <input class="category-btn"  type="button" value="라이프스타일">
                <input class="category-btn"  type="button" value="티,커피용품">
                <input class="category-btn"  type="button" value="추천상품">
            </div>
            <div class="product-upload-info">
                <div class="product-upload-img">
                    <div>
                        <button type="reset" class="img-delete"><i class="fas fa-times-circle"></i></button>
                    </div>
                    <input type="file" name="product_img">
                </div>
                <div>
                    <input type="text" placeholder="상품명을 입력하세요." name="product_name" class="product-info-ip">
                    <input type="text" placeholder="상품의 금액을 입력하세요." name="product_price" class="product-info-ip">
                </div>
            </div>
            <div class="product-upload-box">
                <button type="button" class="product-upload">등록하기</button>
            </div>
        </form>
    </div>
    <script src="/js/admin_product_upload.js"></script>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>

</html>