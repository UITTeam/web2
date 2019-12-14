<script type="text/javascript" src="./jquery-3.3.1.min.js"></script>

            <div class="stat-count">200</div>
            <div class="s-text">People</div>
        
<script>
(function($) {
    "Sun Fantastic";
    function count($this) {
        var current = parseInt($this.html(), 10);
        current = current + 1;
        $this.html(++current);
        if (current > $this.data('count')) {
            $this.html($this.data('count'))
        } else {
            setTimeout(function() {
                count($this)
            }, 10) // Tốc độ đếm số, số 1 là nhanh nhất
        }
    }
    $(".stat-count").each(function() {
        $(this).data('count', parseInt($(this).html(), 10));
        $(this).html('0');
        count($(this))
    })
})(jQuery);
</script>