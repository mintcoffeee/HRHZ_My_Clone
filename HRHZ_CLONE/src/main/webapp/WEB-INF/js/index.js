$(function () {
	
	bestContents();

});


function bestContents() {
	var optionItem;
	
 	$.ajax({
        type: 'post',
        url: '/bestProduct',
        data: 'json',
        success: function (data){
                    
	        $.each(data, function(index, items){
	        
	        	optionItem = $(
	        	"<div class='bestContent'>" + 
                        "<a href='/purchase/productDetail'>" + 
                            "<div class='bestImg'>" +
                                "<img src='/storage/" + items.imgPath +"' />" +
                            "</div>"+
                            "<div class='bestDesc'>" +
                                "<span><strong>" + items.brandName +"</strong></span>" +
                                "<span>" + items.productName +"</span>" +

                                "<div class='bestPrice'>" + 
                                    "<span class='percentage'>" +
                                    	"<span>" +
                                    		"<strong>20</strong>" +
                                    	"</span>%</span>"+
                                    "<span class='price'>" +
                                    	"<span><strong>"+ items.price + "</strong>" +
                                    	"</span>원</span>" +
                                    
                                "</div>"+
                            "</div>" + 
                            "<div class='likeNumber'>" +
                                "좋아요" + 
                               "<span>"+ items.like +"</span>" +
                            "</div>" +
                        "</a>" +
                        "<img class='heartIcon heartIconWhite' src='../images/category/heart.jpg'/>" +
                        "<img class='heartIcon heartIconViolet' src='../images/category/heart_violet.jpg'/>" +
                    "</div>"			
        		
        		
        		);
	        	
	        	
	        	
	        	$('.bestContents').append(optionItem);
	        	
			});
        
        },
        err: function (err){ 
        	console.log(err); 
        }
    });


}




function articleContents() {
	var optionItem;
	
 	$.ajax({
        type: 'post',
        url: '/top100Product',
        data: 'json',
        success: function (data){
                    
	        $.each(data, function(index, items){
	        
	        	optionItem = $(
	        	
	        	"<div class='bestContent'>" + 
                        "<a href='/purchase/productDetail'>" + 
                            "<div class='bestImg'>" +
                                "<img src='/storage/" + items.imgPath +"' />" +
                            "</div>"+
                            "<div class='bestDesc'>" +
                                "<span><strong>" + items.brandName +"</strong></span>" +
                                "<span>" + items.productName +"</span>" +

                                "<div class='bestPrice'>" + 
                                    "<span class='percentage'>" +
                                    	"<span>" +
                                    		"<strong>20</strong>" +
                                    	"</span>%</span>"+
                                    "<span class='price'>" +
                                    	"<span><strong>"+ items.price + "</strong>" +
                                    	"</span>원</span>" +
                                    
                                "</div>"+
                            "</div>" + 
                            "<div class='likeNumber'>" +
                                "좋아요" + 
                               "<span>"+ items.like +"</span>" +
                            "</div>" +
                        "</a>" +
                        "<img class='heartIcon heartIconWhite' src='../images/category/heart.jpg'/>" +
                        "<img class='heartIcon heartIconViolet' src='../images/category/heart_violet.jpg'/>" +
                    "</div>"			
        		
        		
        		);
	        	
	        	
	        	
	        	$('.articleContents').append(optionItem);
	        	
			});
        
        },
        err: function (err){ 
        	console.log(err); 
        }
    });


}