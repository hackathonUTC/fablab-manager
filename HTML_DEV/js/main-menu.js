function toggle_panel_visibility ($lateral_panel, $background_layer, $body) {
	if( $lateral_panel.hasClass('speed-in') ) {
		$lateral_panel.removeClass('speed-in');
	} else {
		$lateral_panel.addClass('speed-in');
	}
}


jQuery(document).ready(function($){
	
    /* Menu mobile */
    $('.menu-icon').click(function(e){
        e.preventDefault();
        $this = $(this);
        if($this.hasClass('is-opened')){
            $this.addClass('is-closed').removeClass('is-opened');            
        } else {
            $this.removeClass('is-closed').addClass('is-opened');
        }
        
        toggle_panel_visibility($('#cssmenu'));
    });
    
	var $L = 768,
		$menu_navigation = $('#cssmenu');
	$(window).on('resize', function(){
		if( $(window).width() >= $L && $menu_navigation.hasClass('speed-in')) {
			$menu_navigation.removeClass('speed-in');
		}
	});

});