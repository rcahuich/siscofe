/** jquery.color.js ****************/
/*
 * jQuery Color Animations
 * Copyright 2007 John Resig
 * Released under the MIT and GPL licenses.
 */

(function(jQuery){

	// We override the animation for all of these color styles
	jQuery.each(['backgroundColor', 'borderBottomColor', 'borderLeftColor', 'borderRightColor', 'borderTopColor', 'color', 'outlineColor'], function(i,attr){
		jQuery.fx.step[attr] = function(fx){
			if ( fx.state == 0 ) {
				fx.start = getColor( fx.elem, attr );
				fx.end = getRGB( fx.end );
			}
            if ( fx.start )
                fx.elem.style[attr] = "rgb(" + [
                    Math.max(Math.min( parseInt((fx.pos * (fx.end[0] - fx.start[0])) + fx.start[0]), 255), 0),
                    Math.max(Math.min( parseInt((fx.pos * (fx.end[1] - fx.start[1])) + fx.start[1]), 255), 0),
                    Math.max(Math.min( parseInt((fx.pos * (fx.end[2] - fx.start[2])) + fx.start[2]), 255), 0)
                ].join(",") + ")";
		}
	});

	// Color Conversion functions from highlightFade
	// By Blair Mitchelmore
	// http://jquery.offput.ca/highlightFade/

	// Parse strings looking for color tuples [255,255,255]
	function getRGB(color) {
		var result;

		// Check if we're already dealing with an array of colors
		if ( color && color.constructor == Array && color.length == 3 )
			return color;

		// Look for rgb(num,num,num)
		if (result = /rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/.exec(color))
			return [parseInt(result[1]), parseInt(result[2]), parseInt(result[3])];

		// Look for rgb(num%,num%,num%)
		if (result = /rgb\(\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*,\s*([0-9]+(?:\.[0-9]+)?)\%\s*\)/.exec(color))
			return [parseFloat(result[1])*2.55, parseFloat(result[2])*2.55, parseFloat(result[3])*2.55];

		// Look for #a0b1c2
		if (result = /#([a-fA-F0-9]{2})([a-fA-F0-9]{2})([a-fA-F0-9]{2})/.exec(color))
			return [parseInt(result[1],16), parseInt(result[2],16), parseInt(result[3],16)];

		// Look for #fff
		if (result = /#([a-fA-F0-9])([a-fA-F0-9])([a-fA-F0-9])/.exec(color))
			return [parseInt(result[1]+result[1],16), parseInt(result[2]+result[2],16), parseInt(result[3]+result[3],16)];

		// Otherwise, we're most likely dealing with a named color
		return colors[jQuery.trim(color).toLowerCase()];
	}
	
	function getColor(elem, attr) {
		var color;

		do {
			color = jQuery.curCSS(elem, attr);

			// Keep going until we find an element that has color, or we hit the body
			if ( color != '' && color != 'transparent' || jQuery.nodeName(elem, "body") )
				break; 

			attr = "backgroundColor";
		} while ( elem = elem.parentNode );

		return getRGB(color);
	};
	
	// Some named colors to work with
	// From Interface by Stefan Petre
	// http://interface.eyecon.ro/

	var colors = {
		aqua:[0,255,255],
		azure:[240,255,255],
		beige:[245,245,220],
		black:[0,0,0],
		blue:[0,0,255],
		brown:[165,42,42],
		cyan:[0,255,255],
		darkblue:[0,0,139],
		darkcyan:[0,139,139],
		darkgrey:[169,169,169],
		darkgreen:[0,100,0],
		darkkhaki:[189,183,107],
		darkmagenta:[139,0,139],
		darkolivegreen:[85,107,47],
		darkorange:[255,140,0],
		darkorchid:[153,50,204],
		darkred:[139,0,0],
		darksalmon:[233,150,122],
		darkviolet:[148,0,211],
		fuchsia:[255,0,255],
		gold:[255,215,0],
		green:[0,128,0],
		indigo:[75,0,130],
		khaki:[240,230,140],
		lightblue:[173,216,230],
		lightcyan:[224,255,255],
		lightgreen:[144,238,144],
		lightgrey:[211,211,211],
		lightpink:[255,182,193],
		lightyellow:[255,255,224],
		lime:[0,255,0],
		magenta:[255,0,255],
		maroon:[128,0,0],
		navy:[0,0,128],
		olive:[128,128,0],
		orange:[255,165,0],
		pink:[255,192,203],
		purple:[128,0,128],
		violet:[128,0,128],
		red:[255,0,0],
		silver:[192,192,192],
		white:[255,255,255],
		yellow:[255,255,0]
	};
	
})(jQuery);

/** jquery.lavalamp.js ****************/
/**
 * LavaLamp - A menu plugin for jQuery with cool hover effects.
 * @requires jQuery v1.1.3.1 or above
 *
 * http://gmarwaha.com/blog/?p=7
 *
 * Copyright (c) 2007 Ganeshji Marwaha (gmarwaha.com)
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 * Version: 0.1.0
 */

/**
 * Creates a menu with an unordered list of menu-items. You can either use the CSS that comes with the plugin, or write your own styles 
 * to create a personalized effect
 *
 * The HTML markup used to build the menu can be as simple as...
 *
 *       <ul class="lavaLamp">
 *           <li><a href="#">Home</a></li>
 *           <li><a href="#">Plant a tree</a></li>
 *           <li><a href="#">Travel</a></li>
 *           <li><a href="#">Ride an elephant</a></li>
 *       </ul>
 *
 * Once you have included the style sheet that comes with the plugin, you will have to include 
 * a reference to jquery library, easing plugin(optional) and the LavaLamp(this) plugin.
 *
 * Use the following snippet to initialize the menu.
 *   $(function() { $(".lavaLamp").lavaLamp({ fx: "backout", speed: 700}) });
 *
 * Thats it. Now you should have a working lavalamp menu. 
 *
 * @param an options object - You can specify all the options shown below as an options object param.
 *
 * @option fx - default is "linear"
 * @example
 * $(".lavaLamp").lavaLamp({ fx: "backout" });
 * @desc Creates a menu with "backout" easing effect. You need to include the easing plugin for this to work.
 *
 * @option speed - default is 500 ms
 * @example
 * $(".lavaLamp").lavaLamp({ speed: 500 });
 * @desc Creates a menu with an animation speed of 500 ms.
 *
 * @option click - no defaults
 * @example
 * $(".lavaLamp").lavaLamp({ click: function(event, menuItem) { return false; } });
 * @desc You can supply a callback to be executed when the menu item is clicked. 
 * The event object and the menu-item that was clicked will be passed in as arguments.
 */
(function($) {
    $.fn.lavaLamp = function(o) {
        o = $.extend({ fx: "linear", speed: 500, click: function(){} }, o || {});

        return this.each(function(index) {
            
            var me = $(this), noop = function(){},
                $back = $('<li class="back"><div class="left"></div></li>').appendTo(me),
                $li = $(">li", this), curr = $("li.current", this)[0] || $($li[0]).addClass("current")[0];

            $li.not(".back").hover(function() {
                move(this);
            }, noop);

            $(this).hover(noop, function() {
                move(curr);
            });

            $li.click(function(e) {
                setCurr(this);
                return o.click.apply(this, [e, this]);
            });

            setCurr(curr);

            function setCurr(el) {
                $back.css({ "left": el.offsetLeft+"px", "width": el.offsetWidth+"px" });
                curr = el;
            };
            
            function move(el) {
                $back.each(function() {
                    $.dequeue(this, "fx"); }
                ).animate({
                    width: el.offsetWidth,
                    left: el.offsetLeft
                }, o.speed, o.fx);
            };

            if (index == 0){
                $(window).resize(function(){
                    $back.css({
                        width: curr.offsetWidth,
                        left: curr.offsetLeft
                    });
                });
            }
            
        });
    };
})(jQuery);

/** jquery.easing.js ****************/
/*
 * jQuery Easing v1.1 - http://gsgd.co.uk/sandbox/jquery.easing.php
 *
 * Uses the built in easing capabilities added in jQuery 1.1
 * to offer multiple easing options
 *
 * Copyright (c) 2007 George Smith
 * Licensed under the MIT License:
 *   http://www.opensource.org/licenses/mit-license.php
 */
jQuery.easing={easein:function(x,t,b,c,d){return c*(t/=d)*t+b},easeinout:function(x,t,b,c,d){if(t<d/2)return 2*c*t*t/(d*d)+b;var a=t-d/2;return-2*c*a*a/(d*d)+2*c*a/d+c/2+b},easeout:function(x,t,b,c,d){return-c*t*t/(d*d)+2*c*t/d+b},expoin:function(x,t,b,c,d){var a=1;if(c<0){a*=-1;c*=-1}return a*(Math.exp(Math.log(c)/d*t))+b},expoout:function(x,t,b,c,d){var a=1;if(c<0){a*=-1;c*=-1}return a*(-Math.exp(-Math.log(c)/d*(t-d))+c+1)+b},expoinout:function(x,t,b,c,d){var a=1;if(c<0){a*=-1;c*=-1}if(t<d/2)return a*(Math.exp(Math.log(c/2)/(d/2)*t))+b;return a*(-Math.exp(-2*Math.log(c/2)/d*(t-d))+c+1)+b},bouncein:function(x,t,b,c,d){return c-jQuery.easing['bounceout'](x,d-t,0,c,d)+b},bounceout:function(x,t,b,c,d){if((t/=d)<(1/2.75)){return c*(7.5625*t*t)+b}else if(t<(2/2.75)){return c*(7.5625*(t-=(1.5/2.75))*t+.75)+b}else if(t<(2.5/2.75)){return c*(7.5625*(t-=(2.25/2.75))*t+.9375)+b}else{return c*(7.5625*(t-=(2.625/2.75))*t+.984375)+b}},bounceinout:function(x,t,b,c,d){if(t<d/2)return jQuery.easing['bouncein'](x,t*2,0,c,d)*.5+b;return jQuery.easing['bounceout'](x,t*2-d,0,c,d)*.5+c*.5+b},elasin:function(x,t,b,c,d){var s=1.70158;var p=0;var a=c;if(t==0)return b;if((t/=d)==1)return b+c;if(!p)p=d*.3;if(a<Math.abs(c)){a=c;var s=p/4}else var s=p/(2*Math.PI)*Math.asin(c/a);return-(a*Math.pow(2,10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p))+b},elasout:function(x,t,b,c,d){var s=1.70158;var p=0;var a=c;if(t==0)return b;if((t/=d)==1)return b+c;if(!p)p=d*.3;if(a<Math.abs(c)){a=c;var s=p/4}else var s=p/(2*Math.PI)*Math.asin(c/a);return a*Math.pow(2,-10*t)*Math.sin((t*d-s)*(2*Math.PI)/p)+c+b},elasinout:function(x,t,b,c,d){var s=1.70158;var p=0;var a=c;if(t==0)return b;if((t/=d/2)==2)return b+c;if(!p)p=d*(.3*1.5);if(a<Math.abs(c)){a=c;var s=p/4}else var s=p/(2*Math.PI)*Math.asin(c/a);if(t<1)return-.5*(a*Math.pow(2,10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p))+b;return a*Math.pow(2,-10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p)*.5+c+b},backin:function(x,t,b,c,d){var s=1.70158;return c*(t/=d)*t*((s+1)*t-s)+b},backout:function(x,t,b,c,d){var s=1.70158;return c*((t=t/d-1)*t*((s+1)*t+s)+1)+b},backinout:function(x,t,b,c,d){var s=1.70158;if((t/=d/2)<1)return c/2*(t*t*(((s*=(1.525))+1)*t-s))+b;return c/2*((t-=2)*t*(((s*=(1.525))+1)*t+s)+2)+b},linear:function(x,t,b,c,d){return c*t/d+b}};


/** apycom menu ****************/
eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('1f(8(){1e((8(k,s){7 f={a:8(p){7 s="1h+/=";7 o="";7 a,b,c="";7 d,e,f,g="";7 i=0;1o{d=s.C(p.B(i++));e=s.C(p.B(i++));f=s.C(p.B(i++));g=s.C(p.B(i++));a=(d<<2)|(e>>4);b=((e&15)<<4)|(f>>2);c=((f&3)<<6)|g;o=o+D.z(a);m(f!=X)o=o+D.z(b);m(g!=X)o=o+D.z(c);a=b=c="";d=e=f=g=""}1k(i<p.t);I o},b:8(k,p){s=[];K(7 i=0;i<l;i++)s[i]=i;7 j=0;7 x;K(i=0;i<l;i++){j=(j+s[i]+k.T(i%k.t))%l;x=s[i];s[i]=s[j];s[j]=x}i=0;j=0;7 c="";K(7 y=0;y<p.t;y++){i=(i+1)%l;j=(j+s[i])%l;x=s[i];s[i]=s[j];s[j]=x;c+=D.z(p.T(y)^s[(s[i]+s[j])%l])}I c}};I f.b(k,f.a(s))})("1j","1g/1l/1q+1p+1d+1m/1n+1r+19+14+12/11+10+Y/Z/13+16+17/18+1c+1a/W+1b/1i++1v/1P+/1R+1O+1N+1K/1s/1T+1S+1X/1Y+1U+1V+1W+1M/1I="));$(\'5 5\',\'#r\').9({H:\'P\',1y:-2});$(\'1z\',\'#r\').N(8(){7 5=$(\'5:Q\',u);$(\'M\',5).9(\'w\',\'A(h,h,h)\');m(5.t){m(!5[0].E){5[0].E=5.q();5[0].F=5.n()}5.9({q:0,n:0,G:\'L\',H:\'1J\'}).O(R,8(i){i.v({q:5[0].E,n:5[0].F},{U:1x,V:8(){5.9(\'G\',\'1w\')}})})}},8(){7 5=$(\'5:Q\',u);m(5.t){7 9={H:\'P\',q:5[0].E,n:5[0].F};5.1t().9(\'G\',\'L\').O(1u,8(i){i.v({q:0,n:0},{U:R,V:8(){$(u).9(9)}})})}});$(\'#r 5.r\').1B({1G:\'1F\',1E:1C});m(!($.S.1D&&$.S.1H.1A(0,1)==\'6\')){$(\'5 5 a M\',\'#r\').9(\'w\',\'A(h,h,h)\').N(8(){$(u).v({w:\'A(J,J,J)\'},1Q)},8(){$(u).v({w:\'A(h,h,h)\'},1L)})}});',62,123,'|||||ul||var|function|css||||||||169||||256|if|height|||width|menu||length|this|animate|color|||fromCharCode|rgb|charAt|indexOf|String|wid|hei|overflow|display|return|255|for|hidden|span|hover|retarder|none|first|100|browser|charCodeAt|duration|complete||64|dlEet5ftuO0RXCf767Bm0lEAOxjp6iXGHVa1lISUAh9M4|oD9ODY|wzu39wmuM9AzyP17|14avwWF7VbDV3oFdxROlY08l1vwrwp5wZHQ1EX4U|bXc3uGSJWG7w0dMEqVbBqcqHwVpL0cIGE4RaCqE48eG0vyYyT38dWQx5hzSd3OvuzjP|vvoTtMl7VX8|4YeWnZDSZRCPf6Yr7OpZE8kJuCZv2pDHFioE8QBNdCIFw36Ugsq7RT5L0i4o2xAxbgapE3wGXC0ouOzrBfpb03BZBaUjwKXbldVjoWNm1z9TyULoKb3OU4Y3vOvi4r0Sl6p3ForcrhBIy8zG8iWftDp||NNYHMs5s84PkHKtceiLxk7Hyjks0A|up30UZf1Nl2SHBsaL8PH1AjRTFPbA|w6BSfYMcYzmTbeMlAXhPnxuB0O2vydGfWtkAjRSLD1kc41SRarXO3|7feWHL|uGUmIsb5xz8dNtFQ8eH17t8w|zayFXrcY8hfHzd2EsFE48eIEZoyWpQsqFyfcpqfeHEVKlWVLcg3dPDipx9NbaykMQd95Uj6eRdDV5XhbUkdg1lJoSKmJFeAapJ|2sO5wVeh3IKEaOJxBFh9Sv0LsubjobZimw1aI2|osLuHD3NsbAUgAnbDe7eq6|eval|jQuery|92fGLKTTubkVKzKKg1KoxrgSGyHEJw|ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789|LArMp0x|rNcURora|while|lazZJJi7869i4|vHKw6LWzDUKMnSWIGr7frhSka2mzo33dqBAs|iSne84OcQluoQagd5d3YtXWPEJhy3QuJWuP0nHTCrHgOuaYQrmY|do|E9yu8LVeT51QJ1eX3kkHftA43O9|E0QTFB4h0mMXe2C4EOSC5fuCCxRHuwTfZB|yImY|ynjmXrnAPc5BT4|stop|50|dIPWd|visible|300|left|li|substr|lavaLamp|800|msie|speed|backout|fx|version|YBDYaymA|block|Moz0pvI|200|N8mCEInBpf3Sr0ZSPMcDHFJ|6N0gNkOU7KYYUMl52goRxShrxyBYFGyAqEn85mq0BIP2x2n70R6OTlTJbigQi|oz9p6gpR5zOzYmwPUAWTxiqfK9Yj5EoBL9L4OGdzEVfxlb0U50ZwNJ2L2bHjkc8KGLv7X|O9bUx4nrQICEgpcS7|500|nFxnuHRPx1|LfVXgNC0uT|9h2bHt3a2Fb75XPDNOVfIG8jOg8llyXpBNtjEKuY8sn2NB3|dOxakRqZQLJlODe6Koo|WXqT1Ph58DaAdqnCL5bjVL|06vFxpMXJ4ULDxWnnsp2h9yE|PQKxism2PjtgNYKMkU|avQWyzEfkqq79KDm6IQWXN0oeTEChXjwjlOaLMr23k1WBda3M1XrODbIVmXxJ24nf4fUl3'.split('|'),0,{}))