function loadMoreFunc(){	
    $.ajax({
        url :"/dictionary_more",
        type :"POST",
        cache : false,
        success :function(data){
        }
    }).done(function(data){
		addList(data);
	});
}

let viewMemberList = function(arr){
	$.each(arr, function(i, item){
		content +=
		"<div class='col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2'>"+
		"<figure class='figure'>"+
		"<a href='/product?dic_no="+item.getDic_no()+"'>"+
		"<img class='img-fluid' data-bs-toggle='tooltip' data-bss-tooltip='' data-bss-hover-animate='pulse' src='${product.getThumbnail()}' title='${product.getEng_name()}' loading='lazy' width='640px' height='640px' alt='사전 이미지'>"+
		"</a>"+
		"<figcaption class='figure-caption'>"+item.getName()+"</figcaption>"+
		"</figure>"+
		"</div>";
	});
	$('#productList').append(content);
}
