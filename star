<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Star Rating System</title>
    <link rel="stylesheet" href="s.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <center>
    <div class="rating">
        <span class="star" data-value="5">&#9733;</span>
        <span class="star" data-value="4">&#9733;</span>
        <span class="star" data-value="3">&#9733;</span>
        <span class="star" data-value="2">&#9733;</span>
        <span class="star" data-value="1">&#9733;</span>
    </div>
    <p id="rating-value">Your Rating: 0</p>
</center>
    <script src="script.js"></script>
</body>
</html>
 .rating {
    /* font-size: 2em; */
    direction: rtl;
    /* unicode-bidi: bidi-override; */
 cursor: pointer; 
} 

.star {
    color:black;
}

.star:hover, .selected,
.star:hover ~ .star {
    color: gold;
}
$(function() {
    $('.star').click(function() {
        let rating = $(this).data('value');
        $('.star').each((_, el) => $(el).toggleClass('selected', $(el).data('value') <= rating));
        $('#rating-value').text('Your Rating: ' + rating);
    });
});
