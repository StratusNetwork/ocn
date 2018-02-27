jQuery(document).on('ready', function() {
    var flakes = '',
        randomColor;
    for(var i = 0, len = 400; i < len; i++) {
        randomColor = Math.floor(Math.random()*100000).toString(16);
        flakes += '<div class="ball" style="background: #'+randomColor;
        flakes += '; animation-duration: '+(Math.random() * 9 + 2)+'s; animation-delay: ';
        flakes += (Math.random() * 2 + 0)+'s;"></div>';
    }
    document.getElementById('confetti').innerHTML = flakes;
});
