var g=this,h=function(b,a){var c=b.split("."),d=g;c[0]in d||!d.execScript||d.execScript("var "+c[0]);for(var e;c.length&&(e=c.shift());)c.length||void 0===a?d=d[e]?d[e]:d[e]={}:d[e]=a},k=function(b,a,c){return b.call.apply(b.bind,arguments)},l=function(b,a,c){if(!b)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return b.apply(a,c)}}return function(){return b.apply(a,
arguments)}},m=function(b,a,c){m=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?k:l;return m.apply(null,arguments)};Function.prototype.bind=Function.prototype.bind||function(b,a){if(1<arguments.length){var c=Array.prototype.slice.call(arguments,1);c.unshift(this,b);return m.apply(null,c)}return m(this,b)};var n=function(b,a){this.b=[];this.l=!!b;this.i=a||window.GLASS.autoSizingComplete()},p=[{className:"text-x-small",c:0},{className:"text-small",c:0},{className:"text-normal",c:0},{className:"text-large",c:0},{className:"text-x-large",c:14}];
h("AutoSizer.init",function(b,a){var c=new n(b,a);if("complete"==document.readyState)window.setTimeout(m(c.d,c),0);else{var d=function(){"complete"==document.readyState&&(document.removeEventListener("readystatechange",d,!1),c.d())};document.addEventListener("readystatechange",d,!1)}return c});
n.prototype.d=function(){this.f();0!=this.b.length||this.l?(this.g=document.getElementsByTagName("body")[0],this.h=q(this),this.h.style.fontFamily="Roboto",this.j=q(this),window.setTimeout(m(this.k,this),10)):this.i()};n.prototype.f=function(){var b=document.getElementsByClassName("text-auto-size");this.b=[];for(var a=0;a<b.length;a++){var c=b[a];this.b.push(c);c.style.visibility="hidden"}};
n.prototype.k=function(){if(this.h.clientWidth<this.j.clientWidth){this.g.removeChild(this.h);this.g.removeChild(this.j);for(var b=0;b<this.b.length;b++){var a=this.b[b],c=document.defaultView.getComputedStyle(a,null),d=parseInt(c.height,10),c=parseInt(c.width,10);a.style.height="auto";a.style.width="auto";for(var e="text-auto-size",f=1;f<p.length;f++){a.className=a.className.replace(e,p[f].className);if(a.scrollHeight>d+p[f].c||a.scrollWidth>c){a.className=a.className.replace(p[f].className,p[f-
1].className);break}e=p[f].className}a.style.height="";a.style.width="";a.style.visibility=""}this.i()}else window.setTimeout(m(this.k,this),10)};var q=function(b){var a=document.createElement("DIV");b.g.appendChild(a);a.appendChild(document.createTextNode("Xx"));a.style.fontWeight="100";a.style.fontSize="30px";a.style.position="absolute";a.style.top="-100px";a.style.width="auto";a.style.margin="0";a.style.padding="0";return a};var r=function(b,a){this.a=[];this.m=Boolean(b);this.e=a||window.GLASS.setContentSize},s=window.innerWidth,t=window.innerHeight;h("Paginator.init",function(b,a){var c=new r(b,a);if("complete"==document.readyState)window.setTimeout(m(c.d,c),0);else{var d=function(){"complete"==document.readyState&&(document.removeEventListener("readystatechange",d,!1),c.d())};document.addEventListener("readystatechange",d,!1)}return c});
r.prototype.d=function(){this.f();if(this.m)if(1<this.a.length){var b=s*this.a.length;this.e(b,t)}else 1==this.a.length&&(b=this.a[0],-1!=b.className.indexOf("auto-paginate")?(b=u(b),b>s&&this.e(b,t)):this.e(s,t));else{for(var a=b=0;a<this.a.length;a++){var c=this.a[a];c.style.left="0px";var d=0,d=-1!=c.className.indexOf("auto-paginate")?u(c):s;c.style.left=b+"px";c.style.visibility="visible";b+=d}this.e(b,t)}};
r.prototype.f=function(){var b=document.getElementsByTagName("article");this.a=[];for(var a=0;a<b.length;a++)this.a.push(b[a])};
var v=function(b){var a=document.documentElement;b=b.getBoundingClientRect();return{top:b.top+window.pageYOffset-a.clientTop,left:b.left+window.pageXOffset-a.clientLeft}},u=function(b){var a,c=document.createElement("DIV");c.textContent="&nbsp;";b.appendChild(c);a=document.documentElement;for(var d=c.offsetParent||a;d&&"HTML"!=d.nodeName&&"static"===d.style.position;)d=d.offsetParent;a=d||a;var d={top:0,left:0},e=v(c);"HTML"!=a.nodeName&&(d=v(a));var f=window.getComputedStyle(c,null);a=e.top-d.top-
parseFloat(f.getPropertyValue("margin-top"));d=e.left-d.left-parseFloat(f.getPropertyValue("margin-left"));40>=a&&(d-=s);b.removeChild(c);return d+s};
