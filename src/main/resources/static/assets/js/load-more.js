$(document).ready(function() {
	console.log("불러옴");
	var loadmore = document.getElementById('loadmore');
	$('#loadmore').click(function() {
		$.ajax({
			type: "post",
			url: "dictionary_more",
			cache: false,
			async: false,
			success: function(products_more) {
				$.each(products_more, function(i, data) {
					var content = document.createElement('div');
					content.className = 'col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2';
					content.innerHTML += "<figure class='figure'>"
						+ "<a href='/product?dic_no=" + data.dic_no + "'>"
						+ "<img class='img-fluid' data-bs-toggle='tooltip' data-bss-tooltip='' data-bss-hover-animate='pulse' src='" + data.thumbnail + "' title='" + data.eng_name + "' loading='lazy' width='640px' height='640px' alt='사전 이미지'>"
						+ "</a>"
						+ "<figcaption class='figure-caption'>" + data.name + "</figcaption>"
						+ "</figure>";
					$('#productList').append(content);
				});
				if (products_more.length != 12) {
					console.log("더이상 없습니다.");
					loadmore.className += ' d-none';
				}
			}
		}).fail(function() {
			console.log("조회 실패");
		});
	});
});