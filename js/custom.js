! function(a, b, c, d) {
    function e(b, c) { this.settings = null, this.options = a.extend({}, e.Defaults, c), this.$element = a(b), this._handlers = {}, this._plugins = {}, this._supress = {}, this._current = null, this._speed = null, this._coordinates = [], this._breakpoint = null, this._width = null, this._items = [], this._clones = [], this._mergers = [], this._widths = [], this._invalidated = {}, this._pipe = [], this._drag = { time: null, target: null, pointer: null, stage: { start: null, current: null }, direction: null }, this._states = { current: {}, tags: { initializing: ["busy"], animating: ["busy"], dragging: ["interacting"] } }, a.each(["onResize", "onThrottledResize"], a.proxy(function(b, c) { this._handlers[c] = a.proxy(this[c], this) }, this)), a.each(e.Plugins, a.proxy(function(a, b) { this._plugins[a.charAt(0).toLowerCase() + a.slice(1)] = new b(this) }, this)), a.each(e.Workers, a.proxy(function(b, c) { this._pipe.push({ filter: c.filter, run: a.proxy(c.run, this) }) }, this)), this.setup(), this.initialize() }
    e.Defaults = { items: 3, loop: !1, center: !1, rewind: !1, checkVisibility: !0, mouseDrag: !0, touchDrag: !0, pullDrag: !0, freeDrag: !1, margin: 0, stagePadding: 0, merge: !1, mergeFit: !0, autoWidth: !1, startPosition: 0, rtl: !1, smartSpeed: 250, fluidSpeed: !1, dragEndSpeed: !1, responsive: {}, responsiveRefreshRate: 200, responsiveBaseElement: b, fallbackEasing: "swing", slideTransition: "", info: !1, nestedItemSelector: !1, itemElement: "div", stageElement: "div", refreshClass: "owl-refresh", loadedClass: "owl-loaded", loadingClass: "owl-loading", rtlClass: "owl-rtl", responsiveClass: "owl-responsive", dragClass: "owl-drag", itemClass: "owl-item", stageClass: "owl-stage", stageOuterClass: "owl-stage-outer", grabClass: "owl-grab" }, e.Width = { Default: "default", Inner: "inner", Outer: "outer" }, e.Type = { Event: "event", State: "state" }, e.Plugins = {}, e.Workers = [{ filter: ["width", "settings"], run: function() { this._width = this.$element.width() } }, { filter: ["width", "items", "settings"], run: function(a) { a.current = this._items && this._items[this.relative(this._current)] } }, { filter: ["items", "settings"], run: function() { this.$stage.children(".cloned").remove() } }, { filter: ["width", "items", "settings"], run: function(a) { var b = this.settings.margin || "",
                c = !this.settings.autoWidth,
                d = this.settings.rtl,
                e = { width: "auto", "margin-left": d ? b : "", "margin-right": d ? "" : b };!c && this.$stage.children().css(e), a.css = e } }, { filter: ["width", "items", "settings"], run: function(a) { var b = (this.width() / this.settings.items).toFixed(3) - this.settings.margin,
                c = null,
                d = this._items.length,
                e = !this.settings.autoWidth,
                f = []; for (a.items = { merge: !1, width: b }; d--;) c = this._mergers[d], c = this.settings.mergeFit && Math.min(c, this.settings.items) || c, a.items.merge = c > 1 || a.items.merge, f[d] = e ? b * c : this._items[d].width();
            this._widths = f } }, { filter: ["items", "settings"], run: function() { var b = [],
                c = this._items,
                d = this.settings,
                e = Math.max(2 * d.items, 4),
                f = 2 * Math.ceil(c.length / 2),
                g = d.loop && c.length ? d.rewind ? e : Math.max(e, f) : 0,
                h = "",
                i = ""; for (g /= 2; g > 0;) b.push(this.normalize(b.length / 2, !0)), h += c[b[b.length - 1]][0].outerHTML, b.push(this.normalize(c.length - 1 - (b.length - 1) / 2, !0)), i = c[b[b.length - 1]][0].outerHTML + i, g -= 1;
            this._clones = b, a(h).addClass("cloned").appendTo(this.$stage), a(i).addClass("cloned").prependTo(this.$stage) } }, { filter: ["width", "items", "settings"], run: function() { for (var a = this.settings.rtl ? 1 : -1, b = this._clones.length + this._items.length, c = -1, d = 0, e = 0, f = []; ++c < b;) d = f[c - 1] || 0, e = this._widths[this.relative(c)] + this.settings.margin, f.push(d + e * a);
            this._coordinates = f } }, { filter: ["width", "items", "settings"], run: function() { var a = this.settings.stagePadding,
                b = this._coordinates,
                c = { width: Math.ceil(Math.abs(b[b.length - 1])) + 2 * a, "padding-left": a || "", "padding-right": a || "" };
            this.$stage.css(c) } }, { filter: ["width", "items", "settings"], run: function(a) { var b = this._coordinates.length,
                c = !this.settings.autoWidth,
                d = this.$stage.children(); if (c && a.items.merge)
                for (; b--;) a.css.width = this._widths[this.relative(b)], d.eq(b).css(a.css);
            else c && (a.css.width = a.items.width, d.css(a.css)) } }, { filter: ["items"], run: function() { this._coordinates.length < 1 && this.$stage.removeAttr("style") } }, { filter: ["width", "items", "settings"], run: function(a) { a.current = a.current ? this.$stage.children().index(a.current) : 0, a.current = Math.max(this.minimum(), Math.min(this.maximum(), a.current)), this.reset(a.current) } }, { filter: ["position"], run: function() { this.animate(this.coordinates(this._current)) } }, { filter: ["width", "position", "items", "settings"], run: function() { var a, b, c, d, e = this.settings.rtl ? 1 : -1,
                f = 2 * this.settings.stagePadding,
                g = this.coordinates(this.current()) + f,
                h = g + this.width() * e,
                i = []; for (c = 0, d = this._coordinates.length; c < d; c++) a = this._coordinates[c - 1] || 0, b = Math.abs(this._coordinates[c]) + f * e, (this.op(a, "<=", g) && this.op(a, ">", h) || this.op(b, "<", g) && this.op(b, ">", h)) && i.push(c);
            this.$stage.children(".active").removeClass("active"), this.$stage.children(":eq(" + i.join("), :eq(") + ")").addClass("active"), this.$stage.children(".center").removeClass("center"), this.settings.center && this.$stage.children().eq(this.current()).addClass("center") } }], e.prototype.initializeStage = function() { this.$stage = this.$element.find("." + this.settings.stageClass), this.$stage.length || (this.$element.addClass(this.options.loadingClass), this.$stage = a("<" + this.settings.stageElement + ">", { class: this.settings.stageClass }).wrap(a("<div/>", { class: this.settings.stageOuterClass })), this.$element.append(this.$stage.parent())) }, e.prototype.initializeItems = function() { var b = this.$element.find(".owl-item"); if (b.length) return this._items = b.get().map(function(b) { return a(b) }), this._mergers = this._items.map(function() { return 1 }), void this.refresh();
        this.replace(this.$element.children().not(this.$stage.parent())), this.isVisible() ? this.refresh() : this.invalidate("width"), this.$element.removeClass(this.options.loadingClass).addClass(this.options.loadedClass) }, e.prototype.initialize = function() { if (this.enter("initializing"), this.trigger("initialize"), this.$element.toggleClass(this.settings.rtlClass, this.settings.rtl), this.settings.autoWidth && !this.is("pre-loading")) { var a, b, c;
            a = this.$element.find("img"), b = this.settings.nestedItemSelector ? "." + this.settings.nestedItemSelector : d, c = this.$element.children(b).width(), a.length && c <= 0 && this.preloadAutoWidthImages(a) }
        this.initializeStage(), this.initializeItems(), this.registerEventHandlers(), this.leave("initializing"), this.trigger("initialized") }, e.prototype.isVisible = function() { return !this.settings.checkVisibility || this.$element.is(":visible") }, e.prototype.setup = function() { var b = this.viewport(),
            c = this.options.responsive,
            d = -1,
            e = null;
        c ? (a.each(c, function(a) { a <= b && a > d && (d = Number(a)) }), e = a.extend({}, this.options, c[d]), "function" == typeof e.stagePadding && (e.stagePadding = e.stagePadding()), delete e.responsive, e.responsiveClass && this.$element.attr("class", this.$element.attr("class").replace(new RegExp("(" + this.options.responsiveClass + "-)\\S+\\s", "g"), "$1" + d))) : e = a.extend({}, this.options), this.trigger("change", { property: { name: "settings", value: e } }), this._breakpoint = d, this.settings = e, this.invalidate("settings"), this.trigger("changed", { property: { name: "settings", value: this.settings } }) }, e.prototype.optionsLogic = function() { this.settings.autoWidth && (this.settings.stagePadding = !1, this.settings.merge = !1) }, e.prototype.prepare = function(b) { var c = this.trigger("prepare", { content: b }); return c.data || (c.data = a("<" + this.settings.itemElement + "/>").addClass(this.options.itemClass).append(b)), this.trigger("prepared", { content: c.data }), c.data }, e.prototype.update = function() { for (var b = 0, c = this._pipe.length, d = a.proxy(function(a) { return this[a] }, this._invalidated), e = {}; b < c;)(this._invalidated.all || a.grep(this._pipe[b].filter, d).length > 0) && this._pipe[b].run(e), b++;
        this._invalidated = {}, !this.is("valid") && this.enter("valid") }, e.prototype.width = function(a) { switch (a = a || e.Width.Default) {
            case e.Width.Inner:
            case e.Width.Outer:
                return this._width;
            default:
                return this._width - 2 * this.settings.stagePadding + this.settings.margin } }, e.prototype.refresh = function() { this.enter("refreshing"), this.trigger("refresh"), this.setup(), this.optionsLogic(), this.$element.addClass(this.options.refreshClass), this.update(), this.$element.removeClass(this.options.refreshClass), this.leave("refreshing"), this.trigger("refreshed") }, e.prototype.onThrottledResize = function() { b.clearTimeout(this.resizeTimer), this.resizeTimer = b.setTimeout(this._handlers.onResize, this.settings.responsiveRefreshRate) }, e.prototype.onResize = function() { return !!this._items.length && (this._width !== this.$element.width() && (!!this.isVisible() && (this.enter("resizing"), this.trigger("resize").isDefaultPrevented() ? (this.leave("resizing"), !1) : (this.invalidate("width"), this.refresh(), this.leave("resizing"), void this.trigger("resized"))))) }, e.prototype.registerEventHandlers = function() { a.support.transition && this.$stage.on(a.support.transition.end + ".owl.core", a.proxy(this.onTransitionEnd, this)), !1 !== this.settings.responsive && this.on(b, "resize", this._handlers.onThrottledResize), this.settings.mouseDrag && (this.$element.addClass(this.options.dragClass), this.$stage.on("mousedown.owl.core", a.proxy(this.onDragStart, this)), this.$stage.on("dragstart.owl.core selectstart.owl.core", function() { return !1 })), this.settings.touchDrag && (this.$stage.on("touchstart.owl.core", a.proxy(this.onDragStart, this)), this.$stage.on("touchcancel.owl.core", a.proxy(this.onDragEnd, this))) }, e.prototype.onDragStart = function(b) { var d = null;
        3 !== b.which && (a.support.transform ? (d = this.$stage.css("transform").replace(/.*\(|\)| /g, "").split(","), d = { x: d[16 === d.length ? 12 : 4], y: d[16 === d.length ? 13 : 5] }) : (d = this.$stage.position(), d = { x: this.settings.rtl ? d.left + this.$stage.width() - this.width() + this.settings.margin : d.left, y: d.top }), this.is("animating") && (a.support.transform ? this.animate(d.x) : this.$stage.stop(), this.invalidate("position")), this.$element.toggleClass(this.options.grabClass, "mousedown" === b.type), this.speed(0), this._drag.time = (new Date).getTime(), this._drag.target = a(b.target), this._drag.stage.start = d, this._drag.stage.current = d, this._drag.pointer = this.pointer(b), a(c).on("mouseup.owl.core touchend.owl.core", a.proxy(this.onDragEnd, this)), a(c).one("mousemove.owl.core touchmove.owl.core", a.proxy(function(b) { var d = this.difference(this._drag.pointer, this.pointer(b));
            a(c).on("mousemove.owl.core touchmove.owl.core", a.proxy(this.onDragMove, this)), Math.abs(d.x) < Math.abs(d.y) && this.is("valid") || (b.preventDefault(), this.enter("dragging"), this.trigger("drag")) }, this))) }, e.prototype.onDragMove = function(a) { var b = null,
            c = null,
            d = null,
            e = this.difference(this._drag.pointer, this.pointer(a)),
            f = this.difference(this._drag.stage.start, e);
        this.is("dragging") && (a.preventDefault(), this.settings.loop ? (b = this.coordinates(this.minimum()), c = this.coordinates(this.maximum() + 1) - b, f.x = ((f.x - b) % c + c) % c + b) : (b = this.settings.rtl ? this.coordinates(this.maximum()) : this.coordinates(this.minimum()), c = this.settings.rtl ? this.coordinates(this.minimum()) : this.coordinates(this.maximum()), d = this.settings.pullDrag ? -1 * e.x / 5 : 0, f.x = Math.max(Math.min(f.x, b + d), c + d)), this._drag.stage.current = f, this.animate(f.x)) }, e.prototype.onDragEnd = function(b) { var d = this.difference(this._drag.pointer, this.pointer(b)),
            e = this._drag.stage.current,
            f = d.x > 0 ^ this.settings.rtl ? "left" : "right";
        a(c).off(".owl.core"), this.$element.removeClass(this.options.grabClass), (0 !== d.x && this.is("dragging") || !this.is("valid")) && (this.speed(this.settings.dragEndSpeed || this.settings.smartSpeed), this.current(this.closest(e.x, 0 !== d.x ? f : this._drag.direction)), this.invalidate("position"), this.update(), this._drag.direction = f, (Math.abs(d.x) > 3 || (new Date).getTime() - this._drag.time > 300) && this._drag.target.one("click.owl.core", function() { return !1 })), this.is("dragging") && (this.leave("dragging"), this.trigger("dragged")) }, e.prototype.closest = function(b, c) { var e = -1,
            f = 30,
            g = this.width(),
            h = this.coordinates(); return this.settings.freeDrag || a.each(h, a.proxy(function(a, i) { return "left" === c && b > i - f && b < i + f ? e = a : "right" === c && b > i - g - f && b < i - g + f ? e = a + 1 : this.op(b, "<", i) && this.op(b, ">", h[a + 1] !== d ? h[a + 1] : i - g) && (e = "left" === c ? a + 1 : a), -1 === e }, this)), this.settings.loop || (this.op(b, ">", h[this.minimum()]) ? e = b = this.minimum() : this.op(b, "<", h[this.maximum()]) && (e = b = this.maximum())), e }, e.prototype.animate = function(b) { var c = this.speed() > 0;
        this.is("animating") && this.onTransitionEnd(), c && (this.enter("animating"), this.trigger("translate")), a.support.transform3d && a.support.transition ? this.$stage.css({ transform: "translate3d(" + (b - 1) + "px,0px,0px)", transition: this.speed() / 1e3 + "s" + (this.settings.slideTransition ? " " + this.settings.slideTransition : "") }) : c ? this.$stage.animate({ left: b + "px" }, this.speed(), this.settings.fallbackEasing, a.proxy(this.onTransitionEnd, this)) : this.$stage.css({ left: b + "px" }) }, e.prototype.is = function(a) { return this._states.current[a] && this._states.current[a] > 0 }, e.prototype.current = function(a) { if (a === d) return this._current; if (0 === this._items.length) return d; if (a = this.normalize(a), this._current !== a) { var b = this.trigger("change", { property: { name: "position", value: a } });
            b.data !== d && (a = this.normalize(b.data)), this._current = a, this.invalidate("position"), this.trigger("changed", { property: { name: "position", value: this._current } }) } return this._current }, e.prototype.invalidate = function(b) { return "string" === a.type(b) && (this._invalidated[b] = !0, this.is("valid") && this.leave("valid")), a.map(this._invalidated, function(a, b) { return b }) }, e.prototype.reset = function(a) {
        (a = this.normalize(a)) !== d && (this._speed = 0, this._current = a, this.suppress(["translate", "translated"]), this.animate(this.coordinates(a)), this.release(["translate", "translated"])) }, e.prototype.normalize = function(a, b) { var c = this._items.length,
            e = b ? 0 : this._clones.length; return !this.isNumeric(a) || c < 1 ? a = d : (a < 0 || a >= c + e) && (a = ((a - e / 2) % c + c) % c + e / 2), a }, e.prototype.relative = function(a) { return a -= this._clones.length / 2, this.normalize(a, !0) }, e.prototype.maximum = function(a) { var b, c, d, e = this.settings,
            f = this._coordinates.length; if (e.loop) f = this._clones.length / 2 + this._items.length - 1;
        else if (e.autoWidth || e.merge) { if (b = this._items.length)
                for (c = this._items[--b].width(), d = this.$element.width(); b-- && !((c += this._items[b].width() + this.settings.margin) > d););
            f = b + 1 } else f = e.center ? this._items.length - 1 : this._items.length - e.items; return a && (f -= this._clones.length / 2), Math.max(f, 0) }, e.prototype.minimum = function(a) { return a ? 0 : this._clones.length / 2 }, e.prototype.items = function(a) { return a === d ? this._items.slice() : (a = this.normalize(a, !0), this._items[a]) }, e.prototype.mergers = function(a) { return a === d ? this._mergers.slice() : (a = this.normalize(a, !0), this._mergers[a]) }, e.prototype.clones = function(b) { var c = this._clones.length / 2,
            e = c + this._items.length,
            f = function(a) { return a % 2 == 0 ? e + a / 2 : c - (a + 1) / 2 }; return b === d ? a.map(this._clones, function(a, b) { return f(b) }) : a.map(this._clones, function(a, c) { return a === b ? f(c) : null }) }, e.prototype.speed = function(a) { return a !== d && (this._speed = a), this._speed }, e.prototype.coordinates = function(b) { var c, e = 1,
            f = b - 1; return b === d ? a.map(this._coordinates, a.proxy(function(a, b) { return this.coordinates(b) }, this)) : (this.settings.center ? (this.settings.rtl && (e = -1, f = b + 1), c = this._coordinates[b], c += (this.width() - c + (this._coordinates[f] || 0)) / 2 * e) : c = this._coordinates[f] || 0, c = Math.ceil(c)) }, e.prototype.duration = function(a, b, c) { return 0 === c ? 0 : Math.min(Math.max(Math.abs(b - a), 1), 6) * Math.abs(c || this.settings.smartSpeed) }, e.prototype.to = function(a, b) { var c = this.current(),
            d = null,
            e = a - this.relative(c),
            f = (e > 0) - (e < 0),
            g = this._items.length,
            h = this.minimum(),
            i = this.maximum();
        this.settings.loop ? (!this.settings.rewind && Math.abs(e) > g / 2 && (e += -1 * f * g), a = c + e, (d = ((a - h) % g + g) % g + h) !== a && d - e <= i && d - e > 0 && (c = d - e, a = d, this.reset(c))) : this.settings.rewind ? (i += 1, a = (a % i + i) % i) : a = Math.max(h, Math.min(i, a)), this.speed(this.duration(c, a, b)), this.current(a), this.isVisible() && this.update() }, e.prototype.next = function(a) { a = a || !1, this.to(this.relative(this.current()) + 1, a) }, e.prototype.prev = function(a) { a = a || !1, this.to(this.relative(this.current()) - 1, a) }, e.prototype.onTransitionEnd = function(a) { if (a !== d && (a.stopPropagation(), (a.target || a.srcElement || a.originalTarget) !== this.$stage.get(0))) return !1;
        this.leave("animating"), this.trigger("translated") }, e.prototype.viewport = function() { var d; return this.options.responsiveBaseElement !== b ? d = a(this.options.responsiveBaseElement).width() : b.innerWidth ? d = b.innerWidth : c.documentElement && c.documentElement.clientWidth ? d = c.documentElement.clientWidth : console.warn("Can not detect viewport width."), d }, e.prototype.replace = function(b) { this.$stage.empty(), this._items = [], b && (b = b instanceof jQuery ? b : a(b)), this.settings.nestedItemSelector && (b = b.find("." + this.settings.nestedItemSelector)), b.filter(function() { return 1 === this.nodeType }).each(a.proxy(function(a, b) { b = this.prepare(b), this.$stage.append(b), this._items.push(b), this._mergers.push(1 * b.find("[data-merge]").addBack("[data-merge]").attr("data-merge") || 1) }, this)), this.reset(this.isNumeric(this.settings.startPosition) ? this.settings.startPosition : 0), this.invalidate("items") }, e.prototype.add = function(b, c) { var e = this.relative(this._current);
        c = c === d ? this._items.length : this.normalize(c, !0), b = b instanceof jQuery ? b : a(b), this.trigger("add", { content: b, position: c }), b = this.prepare(b), 0 === this._items.length || c === this._items.length ? (0 === this._items.length && this.$stage.append(b), 0 !== this._items.length && this._items[c - 1].after(b), this._items.push(b), this._mergers.push(1 * b.find("[data-merge]").addBack("[data-merge]").attr("data-merge") || 1)) : (this._items[c].before(b), this._items.splice(c, 0, b), this._mergers.splice(c, 0, 1 * b.find("[data-merge]").addBack("[data-merge]").attr("data-merge") || 1)), this._items[e] && this.reset(this._items[e].index()), this.invalidate("items"), this.trigger("added", { content: b, position: c }) }, e.prototype.remove = function(a) {
        (a = this.normalize(a, !0)) !== d && (this.trigger("remove", { content: this._items[a], position: a }), this._items[a].remove(), this._items.splice(a, 1), this._mergers.splice(a, 1), this.invalidate("items"), this.trigger("removed", { content: null, position: a })) }, e.prototype.preloadAutoWidthImages = function(b) { b.each(a.proxy(function(b, c) { this.enter("pre-loading"), c = a(c), a(new Image).one("load", a.proxy(function(a) { c.attr("src", a.target.src), c.css("opacity", 1), this.leave("pre-loading"), !this.is("pre-loading") && !this.is("initializing") && this.refresh() }, this)).attr("src", c.attr("src") || c.attr("data-src") || c.attr("data-src-retina")) }, this)) }, e.prototype.destroy = function() { this.$element.off(".owl.core"), this.$stage.off(".owl.core"), a(c).off(".owl.core"), !1 !== this.settings.responsive && (b.clearTimeout(this.resizeTimer), this.off(b, "resize", this._handlers.onThrottledResize)); for (var d in this._plugins) this._plugins[d].destroy();
        this.$stage.children(".cloned").remove(), this.$stage.unwrap(), this.$stage.children().contents().unwrap(), this.$stage.children().unwrap(), this.$stage.remove(), this.$element.removeClass(this.options.refreshClass).removeClass(this.options.loadingClass).removeClass(this.options.loadedClass).removeClass(this.options.rtlClass).removeClass(this.options.dragClass).removeClass(this.options.grabClass).attr("class", this.$element.attr("class").replace(new RegExp(this.options.responsiveClass + "-\\S+\\s", "g"), "")).removeData("owl.carousel") }, e.prototype.op = function(a, b, c) { var d = this.settings.rtl; switch (b) {
            case "<":
                return d ? a > c : a < c;
            case ">":
                return d ? a < c : a > c;
            case ">=":
                return d ? a <= c : a >= c;
            case "<=":
                return d ? a >= c : a <= c } }, e.prototype.on = function(a, b, c, d) { a.addEventListener ? a.addEventListener(b, c, d) : a.attachEvent && a.attachEvent("on" + b, c) }, e.prototype.off = function(a, b, c, d) { a.removeEventListener ? a.removeEventListener(b, c, d) : a.detachEvent && a.detachEvent("on" + b, c) }, e.prototype.trigger = function(b, c, d, f, g) { var h = { item: { count: this._items.length, index: this.current() } },
            i = a.camelCase(a.grep(["on", b, d], function(a) { return a }).join("-").toLowerCase()),
            j = a.Event([b, "owl", d || "carousel"].join(".").toLowerCase(), a.extend({ relatedTarget: this }, h, c)); return this._supress[b] || (a.each(this._plugins, function(a, b) { b.onTrigger && b.onTrigger(j) }), this.register({ type: e.Type.Event, name: b }), this.$element.trigger(j), this.settings && "function" == typeof this.settings[i] && this.settings[i].call(this, j)), j }, e.prototype.enter = function(b) { a.each([b].concat(this._states.tags[b] || []), a.proxy(function(a, b) { this._states.current[b] === d && (this._states.current[b] = 0), this._states.current[b]++ }, this)) }, e.prototype.leave = function(b) { a.each([b].concat(this._states.tags[b] || []), a.proxy(function(a, b) { this._states.current[b]-- }, this)) }, e.prototype.register = function(b) { if (b.type === e.Type.Event) { if (a.event.special[b.name] || (a.event.special[b.name] = {}), !a.event.special[b.name].owl) { var c = a.event.special[b.name]._default;
                a.event.special[b.name]._default = function(a) { return !c || !c.apply || a.namespace && -1 !== a.namespace.indexOf("owl") ? a.namespace && a.namespace.indexOf("owl") > -1 : c.apply(this, arguments) }, a.event.special[b.name].owl = !0 } } else b.type === e.Type.State && (this._states.tags[b.name] ? this._states.tags[b.name] = this._states.tags[b.name].concat(b.tags) : this._states.tags[b.name] = b.tags, this._states.tags[b.name] = a.grep(this._states.tags[b.name], a.proxy(function(c, d) { return a.inArray(c, this._states.tags[b.name]) === d }, this))) }, e.prototype.suppress = function(b) { a.each(b, a.proxy(function(a, b) { this._supress[b] = !0 }, this)) }, e.prototype.release = function(b) { a.each(b, a.proxy(function(a, b) { delete this._supress[b] }, this)) }, e.prototype.pointer = function(a) { var c = { x: null, y: null }; return a = a.originalEvent || a || b.event, a = a.touches && a.touches.length ? a.touches[0] : a.changedTouches && a.changedTouches.length ? a.changedTouches[0] : a, a.pageX ? (c.x = a.pageX, c.y = a.pageY) : (c.x = a.clientX, c.y = a.clientY), c }, e.prototype.isNumeric = function(a) { return !isNaN(parseFloat(a)) }, e.prototype.difference = function(a, b) { return { x: a.x - b.x, y: a.y - b.y } }, a.fn.owlCarousel = function(b) { var c = Array.prototype.slice.call(arguments, 1); return this.each(function() { var d = a(this),
                f = d.data("owl.carousel");
            f || (f = new e(this, "object" == typeof b && b), d.data("owl.carousel", f), a.each(["next", "prev", "to", "destroy", "refresh", "replace", "add", "remove"], function(b, c) { f.register({ type: e.Type.Event, name: c }), f.$element.on(c + ".owl.carousel.core", a.proxy(function(a) { a.namespace && a.relatedTarget !== this && (this.suppress([c]), f[c].apply(this, [].slice.call(arguments, 1)), this.release([c])) }, f)) })), "string" == typeof b && "_" !== b.charAt(0) && f[b].apply(f, c) }) }, a.fn.owlCarousel.Constructor = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { var e = function(b) { this._core = b, this._interval = null, this._visible = null, this._handlers = { "initialized.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.autoRefresh && this.watch() }, this) }, this._core.options = a.extend({}, e.Defaults, this._core.options), this._core.$element.on(this._handlers) };
    e.Defaults = { autoRefresh: !0, autoRefreshInterval: 500 }, e.prototype.watch = function() { this._interval || (this._visible = this._core.isVisible(), this._interval = b.setInterval(a.proxy(this.refresh, this), this._core.settings.autoRefreshInterval)) }, e.prototype.refresh = function() { this._core.isVisible() !== this._visible && (this._visible = !this._visible, this._core.$element.toggleClass("owl-hidden", !this._visible), this._visible && this._core.invalidate("width") && this._core.refresh()) }, e.prototype.destroy = function() { var a, c;
        b.clearInterval(this._interval); for (a in this._handlers) this._core.$element.off(a, this._handlers[a]); for (c in Object.getOwnPropertyNames(this)) "function" != typeof this[c] && (this[c] = null) }, a.fn.owlCarousel.Constructor.Plugins.AutoRefresh = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { var e = function(b) { this._core = b, this._loaded = [], this._handlers = { "initialized.owl.carousel change.owl.carousel resized.owl.carousel": a.proxy(function(b) { if (b.namespace && this._core.settings && this._core.settings.lazyLoad && (b.property && "position" == b.property.name || "initialized" == b.type)) { var c = this._core.settings,
                        e = c.center && Math.ceil(c.items / 2) || c.items,
                        f = c.center && -1 * e || 0,
                        g = (b.property && b.property.value !== d ? b.property.value : this._core.current()) + f,
                        h = this._core.clones().length,
                        i = a.proxy(function(a, b) { this.load(b) }, this); for (c.lazyLoadEager > 0 && (e += c.lazyLoadEager, c.loop && (g -= c.lazyLoadEager, e++)); f++ < e;) this.load(h / 2 + this._core.relative(g)), h && a.each(this._core.clones(this._core.relative(g)), i), g++ } }, this) }, this._core.options = a.extend({}, e.Defaults, this._core.options), this._core.$element.on(this._handlers) };
    e.Defaults = { lazyLoad: !1, lazyLoadEager: 0 }, e.prototype.load = function(c) { var d = this._core.$stage.children().eq(c),
            e = d && d.find(".owl-lazy");!e || a.inArray(d.get(0), this._loaded) > -1 || (e.each(a.proxy(function(c, d) { var e, f = a(d),
                g = b.devicePixelRatio > 1 && f.attr("data-src-retina") || f.attr("data-src") || f.attr("data-srcset");
            this._core.trigger("load", { element: f, url: g }, "lazy"), f.is("img") ? f.one("load.owl.lazy", a.proxy(function() { f.css("opacity", 1), this._core.trigger("loaded", { element: f, url: g }, "lazy") }, this)).attr("src", g) : f.is("source") ? f.one("load.owl.lazy", a.proxy(function() { this._core.trigger("loaded", { element: f, url: g }, "lazy") }, this)).attr("srcset", g) : (e = new Image, e.onload = a.proxy(function() { f.css({ "background-image": 'url("' + g + '")', opacity: "1" }), this._core.trigger("loaded", { element: f, url: g }, "lazy") }, this), e.src = g) }, this)), this._loaded.push(d.get(0))) }, e.prototype.destroy = function() { var a, b; for (a in this.handlers) this._core.$element.off(a, this.handlers[a]); for (b in Object.getOwnPropertyNames(this)) "function" != typeof this[b] && (this[b] = null) }, a.fn.owlCarousel.Constructor.Plugins.Lazy = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { var e = function(c) { this._core = c, this._previousHeight = null, this._handlers = { "initialized.owl.carousel refreshed.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.autoHeight && this.update() }, this), "changed.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.autoHeight && "position" === a.property.name && this.update() }, this), "loaded.owl.lazy": a.proxy(function(a) { a.namespace && this._core.settings.autoHeight && a.element.closest("." + this._core.settings.itemClass).index() === this._core.current() && this.update() }, this) }, this._core.options = a.extend({}, e.Defaults, this._core.options), this._core.$element.on(this._handlers), this._intervalId = null; var d = this;
        a(b).on("load", function() { d._core.settings.autoHeight && d.update() }), a(b).resize(function() { d._core.settings.autoHeight && (null != d._intervalId && clearTimeout(d._intervalId), d._intervalId = setTimeout(function() { d.update() }, 250)) }) };
    e.Defaults = { autoHeight: !1, autoHeightClass: "owl-height" }, e.prototype.update = function() { var b = this._core._current,
            c = b + this._core.settings.items,
            d = this._core.settings.lazyLoad,
            e = this._core.$stage.children().toArray().slice(b, c),
            f = [],
            g = 0;
        a.each(e, function(b, c) { f.push(a(c).height()) }), g = Math.max.apply(null, f), g <= 1 && d && this._previousHeight && (g = this._previousHeight), this._previousHeight = g, this._core.$stage.parent().height(g).addClass(this._core.settings.autoHeightClass) }, e.prototype.destroy = function() { var a, b; for (a in this._handlers) this._core.$element.off(a, this._handlers[a]); for (b in Object.getOwnPropertyNames(this)) "function" != typeof this[b] && (this[b] = null) }, a.fn.owlCarousel.Constructor.Plugins.AutoHeight = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { var e = function(b) { this._core = b, this._videos = {}, this._playing = null, this._handlers = { "initialized.owl.carousel": a.proxy(function(a) { a.namespace && this._core.register({ type: "state", name: "playing", tags: ["interacting"] }) }, this), "resize.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.video && this.isInFullScreen() && a.preventDefault() }, this), "refreshed.owl.carousel": a.proxy(function(a) { a.namespace && this._core.is("resizing") && this._core.$stage.find(".cloned .owl-video-frame").remove() }, this), "changed.owl.carousel": a.proxy(function(a) { a.namespace && "position" === a.property.name && this._playing && this.stop() }, this), "prepared.owl.carousel": a.proxy(function(b) { if (b.namespace) { var c = a(b.content).find(".owl-video");
                    c.length && (c.css("display", "none"), this.fetch(c, a(b.content))) } }, this) }, this._core.options = a.extend({}, e.Defaults, this._core.options), this._core.$element.on(this._handlers), this._core.$element.on("click.owl.video", ".owl-video-play-icon", a.proxy(function(a) { this.play(a) }, this)) };
    e.Defaults = { video: !1, videoHeight: !1, videoWidth: !1 }, e.prototype.fetch = function(a, b) { var c = function() { return a.attr("data-vimeo-id") ? "vimeo" : a.attr("data-vzaar-id") ? "vzaar" : "youtube" }(),
            d = a.attr("data-vimeo-id") || a.attr("data-youtube-id") || a.attr("data-vzaar-id"),
            e = a.attr("data-width") || this._core.settings.videoWidth,
            f = a.attr("data-height") || this._core.settings.videoHeight,
            g = a.attr("href"); if (!g) throw new Error("Missing video URL."); if (d = g.match(/(http:|https:|)\/\/(player.|www.|app.)?(vimeo\.com|youtu(be\.com|\.be|be\.googleapis\.com|be\-nocookie\.com)|vzaar\.com)\/(video\/|videos\/|embed\/|channels\/.+\/|groups\/.+\/|watch\?v=|v\/)?([A-Za-z0-9._%-]*)(\&\S+)?/), d[3].indexOf("youtu") > -1) c = "youtube";
        else if (d[3].indexOf("vimeo") > -1) c = "vimeo";
        else { if (!(d[3].indexOf("vzaar") > -1)) throw new Error("Video URL not supported.");
            c = "vzaar" }
        d = d[6], this._videos[g] = { type: c, id: d, width: e, height: f }, b.attr("data-video", g), this.thumbnail(a, this._videos[g]) }, e.prototype.thumbnail = function(b, c) { var d, e, f, g = c.width && c.height ? "width:" + c.width + "px;height:" + c.height + "px;" : "",
            h = b.find("img"),
            i = "src",
            j = "",
            k = this._core.settings,
            l = function(c) { e = '<div class="owl-video-play-icon"></div>', d = k.lazyLoad ? a("<div/>", { class: "owl-video-tn " + j, srcType: c }) : a("<div/>", { class: "owl-video-tn", style: "opacity:1;background-image:url(" + c + ")" }), b.after(d), b.after(e) }; if (b.wrap(a("<div/>", { class: "owl-video-wrapper", style: g })), this._core.settings.lazyLoad && (i = "data-src", j = "owl-lazy"), h.length) return l(h.attr(i)), h.remove(), !1; "youtube" === c.type ? (f = "//img.youtube.com/vi/" + c.id + "/hqdefault.jpg", l(f)) : "vimeo" === c.type ? a.ajax({ type: "GET", url: "//vimeo.com/api/v2/video/" + c.id + ".json", jsonp: "callback", dataType: "jsonp", success: function(a) { f = a[0].thumbnail_large, l(f) } }) : "vzaar" === c.type && a.ajax({ type: "GET", url: "//vzaar.com/api/videos/" + c.id + ".json", jsonp: "callback", dataType: "jsonp", success: function(a) { f = a.framegrab_url, l(f) } }) }, e.prototype.stop = function() { this._core.trigger("stop", null, "video"), this._playing.find(".owl-video-frame").remove(), this._playing.removeClass("owl-video-playing"), this._playing = null, this._core.leave("playing"), this._core.trigger("stopped", null, "video") }, e.prototype.play = function(b) { var c, d = a(b.target),
            e = d.closest("." + this._core.settings.itemClass),
            f = this._videos[e.attr("data-video")],
            g = f.width || "100%",
            h = f.height || this._core.$stage.height();
        this._playing || (this._core.enter("playing"), this._core.trigger("play", null, "video"), e = this._core.items(this._core.relative(e.index())), this._core.reset(e.index()), c = a('<iframe frameborder="0" allowfullscreen mozallowfullscreen webkitAllowFullScreen ></iframe>'), c.attr("height", h), c.attr("width", g), "youtube" === f.type ? c.attr("src", "//www.youtube.com/embed/" + f.id + "?autoplay=1&rel=0&v=" + f.id) : "vimeo" === f.type ? c.attr("src", "//player.vimeo.com/video/" + f.id + "?autoplay=1") : "vzaar" === f.type && c.attr("src", "//view.vzaar.com/" + f.id + "/player?autoplay=true"), a(c).wrap('<div class="owl-video-frame" />').insertAfter(e.find(".owl-video")), this._playing = e.addClass("owl-video-playing")) }, e.prototype.isInFullScreen = function() { var b = c.fullscreenElement || c.mozFullScreenElement || c.webkitFullscreenElement; return b && a(b).parent().hasClass("owl-video-frame") }, e.prototype.destroy = function() { var a, b;
        this._core.$element.off("click.owl.video"); for (a in this._handlers) this._core.$element.off(a, this._handlers[a]); for (b in Object.getOwnPropertyNames(this)) "function" != typeof this[b] && (this[b] = null) }, a.fn.owlCarousel.Constructor.Plugins.Video = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) {
    var e = function(b) { this.core = b, this.core.options = a.extend({}, e.Defaults, this.core.options), this.swapping = !0, this.previous = d, this.next = d, this.handlers = { "change.owl.carousel": a.proxy(function(a) { a.namespace && "position" == a.property.name && (this.previous = this.core.current(), this.next = a.property.value) }, this), "drag.owl.carousel dragged.owl.carousel translated.owl.carousel": a.proxy(function(a) { a.namespace && (this.swapping = "translated" == a.type) }, this), "translate.owl.carousel": a.proxy(function(a) { a.namespace && this.swapping && (this.core.options.animateOut || this.core.options.animateIn) && this.swap() }, this) }, this.core.$element.on(this.handlers) };
    e.Defaults = {
        animateOut: !1,
        animateIn: !1
    }, e.prototype.swap = function() { if (1 === this.core.settings.items && a.support.animation && a.support.transition) { this.core.speed(0); var b, c = a.proxy(this.clear, this),
                d = this.core.$stage.children().eq(this.previous),
                e = this.core.$stage.children().eq(this.next),
                f = this.core.settings.animateIn,
                g = this.core.settings.animateOut;
            this.core.current() !== this.previous && (g && (b = this.core.coordinates(this.previous) - this.core.coordinates(this.next), d.one(a.support.animation.end, c).css({ left: b + "px" }).addClass("animated owl-animated-out").addClass(g)), f && e.one(a.support.animation.end, c).addClass("animated owl-animated-in").addClass(f)) } }, e.prototype.clear = function(b) { a(b.target).css({ left: "" }).removeClass("animated owl-animated-out owl-animated-in").removeClass(this.core.settings.animateIn).removeClass(this.core.settings.animateOut), this.core.onTransitionEnd() }, e.prototype.destroy = function() { var a, b; for (a in this.handlers) this.core.$element.off(a, this.handlers[a]); for (b in Object.getOwnPropertyNames(this)) "function" != typeof this[b] && (this[b] = null) }, a.fn.owlCarousel.Constructor.Plugins.Animate = e
}(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { var e = function(b) { this._core = b, this._call = null, this._time = 0, this._timeout = 0, this._paused = !0, this._handlers = { "changed.owl.carousel": a.proxy(function(a) { a.namespace && "settings" === a.property.name ? this._core.settings.autoplay ? this.play() : this.stop() : a.namespace && "position" === a.property.name && this._paused && (this._time = 0) }, this), "initialized.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.autoplay && this.play() }, this), "play.owl.autoplay": a.proxy(function(a, b, c) { a.namespace && this.play(b, c) }, this), "stop.owl.autoplay": a.proxy(function(a) { a.namespace && this.stop() }, this), "mouseover.owl.autoplay": a.proxy(function() { this._core.settings.autoplayHoverPause && this._core.is("rotating") && this.pause() }, this), "mouseleave.owl.autoplay": a.proxy(function() { this._core.settings.autoplayHoverPause && this._core.is("rotating") && this.play() }, this), "touchstart.owl.core": a.proxy(function() { this._core.settings.autoplayHoverPause && this._core.is("rotating") && this.pause() }, this), "touchend.owl.core": a.proxy(function() { this._core.settings.autoplayHoverPause && this.play() }, this) }, this._core.$element.on(this._handlers), this._core.options = a.extend({}, e.Defaults, this._core.options) };
    e.Defaults = { autoplay: !1, autoplayTimeout: 5e3, autoplayHoverPause: !1, autoplaySpeed: !1 }, e.prototype._next = function(d) { this._call = b.setTimeout(a.proxy(this._next, this, d), this._timeout * (Math.round(this.read() / this._timeout) + 1) - this.read()), this._core.is("interacting") || c.hidden || this._core.next(d || this._core.settings.autoplaySpeed) }, e.prototype.read = function() { return (new Date).getTime() - this._time }, e.prototype.play = function(c, d) { var e;
        this._core.is("rotating") || this._core.enter("rotating"), c = c || this._core.settings.autoplayTimeout, e = Math.min(this._time % (this._timeout || c), c), this._paused ? (this._time = this.read(), this._paused = !1) : b.clearTimeout(this._call), this._time += this.read() % c - e, this._timeout = c, this._call = b.setTimeout(a.proxy(this._next, this, d), c - e) }, e.prototype.stop = function() { this._core.is("rotating") && (this._time = 0, this._paused = !0, b.clearTimeout(this._call), this._core.leave("rotating")) }, e.prototype.pause = function() { this._core.is("rotating") && !this._paused && (this._time = this.read(), this._paused = !0, b.clearTimeout(this._call)) }, e.prototype.destroy = function() { var a, b;
        this.stop(); for (a in this._handlers) this._core.$element.off(a, this._handlers[a]); for (b in Object.getOwnPropertyNames(this)) "function" != typeof this[b] && (this[b] = null) }, a.fn.owlCarousel.Constructor.Plugins.autoplay = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { "use strict"; var e = function(b) { this._core = b, this._initialized = !1, this._pages = [], this._controls = {}, this._templates = [], this.$element = this._core.$element, this._overrides = { next: this._core.next, prev: this._core.prev, to: this._core.to }, this._handlers = { "prepared.owl.carousel": a.proxy(function(b) { b.namespace && this._core.settings.dotsData && this._templates.push('<div class="' + this._core.settings.dotClass + '">' + a(b.content).find("[data-dot]").addBack("[data-dot]").attr("data-dot") + "</div>") }, this), "added.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.dotsData && this._templates.splice(a.position, 0, this._templates.pop()) }, this), "remove.owl.carousel": a.proxy(function(a) { a.namespace && this._core.settings.dotsData && this._templates.splice(a.position, 1) }, this), "changed.owl.carousel": a.proxy(function(a) { a.namespace && "position" == a.property.name && this.draw() }, this), "initialized.owl.carousel": a.proxy(function(a) { a.namespace && !this._initialized && (this._core.trigger("initialize", null, "navigation"), this.initialize(), this.update(), this.draw(), this._initialized = !0, this._core.trigger("initialized", null, "navigation")) }, this), "refreshed.owl.carousel": a.proxy(function(a) { a.namespace && this._initialized && (this._core.trigger("refresh", null, "navigation"), this.update(), this.draw(), this._core.trigger("refreshed", null, "navigation")) }, this) }, this._core.options = a.extend({}, e.Defaults, this._core.options), this.$element.on(this._handlers) };
    e.Defaults = { nav: !1, navText: ['<span aria-label="Previous">&#x2039;</span>', '<span aria-label="Next">&#x203a;</span>'], navSpeed: !1, navElement: 'button type="button" role="presentation"', navContainer: !1, navContainerClass: "owl-nav", navClass: ["owl-prev", "owl-next"], slideBy: 1, dotClass: "owl-dot", dotsClass: "owl-dots", dots: !0, dotsEach: !1, dotsData: !1, dotsSpeed: !1, dotsContainer: !1 }, e.prototype.initialize = function() { var b, c = this._core.settings;
        this._controls.$relative = (c.navContainer ? a(c.navContainer) : a("<div>").addClass(c.navContainerClass).appendTo(this.$element)).addClass("disabled"), this._controls.$previous = a("<" + c.navElement + ">").addClass(c.navClass[0]).html(c.navText[0]).prependTo(this._controls.$relative).on("click", a.proxy(function(a) { this.prev(c.navSpeed) }, this)), this._controls.$next = a("<" + c.navElement + ">").addClass(c.navClass[1]).html(c.navText[1]).appendTo(this._controls.$relative).on("click", a.proxy(function(a) { this.next(c.navSpeed) }, this)), c.dotsData || (this._templates = [a('<button role="button">').addClass(c.dotClass).append(a("<span>")).prop("outerHTML")]), this._controls.$absolute = (c.dotsContainer ? a(c.dotsContainer) : a("<div>").addClass(c.dotsClass).appendTo(this.$element)).addClass("disabled"), this._controls.$absolute.on("click", "button", a.proxy(function(b) { var d = a(b.target).parent().is(this._controls.$absolute) ? a(b.target).index() : a(b.target).parent().index();
            b.preventDefault(), this.to(d, c.dotsSpeed) }, this)); for (b in this._overrides) this._core[b] = a.proxy(this[b], this) }, e.prototype.destroy = function() { var a, b, c, d, e;
        e = this._core.settings; for (a in this._handlers) this.$element.off(a, this._handlers[a]); for (b in this._controls) "$relative" === b && e.navContainer ? this._controls[b].html("") : this._controls[b].remove(); for (d in this.overides) this._core[d] = this._overrides[d]; for (c in Object.getOwnPropertyNames(this)) "function" != typeof this[c] && (this[c] = null) }, e.prototype.update = function() { var a, b, c, d = this._core.clones().length / 2,
            e = d + this._core.items().length,
            f = this._core.maximum(!0),
            g = this._core.settings,
            h = g.center || g.autoWidth || g.dotsData ? 1 : g.dotsEach || g.items; if ("page" !== g.slideBy && (g.slideBy = Math.min(g.slideBy, g.items)), g.dots || "page" == g.slideBy)
            for (this._pages = [], a = d, b = 0, c = 0; a < e; a++) { if (b >= h || 0 === b) { if (this._pages.push({ start: Math.min(f, a - d), end: a - d + h - 1 }), Math.min(f, a - d) === f) break;
                    b = 0, ++c }
                b += this._core.mergers(this._core.relative(a)) } }, e.prototype.draw = function() { var b, c = this._core.settings,
            d = this._core.items().length <= c.items,
            e = this._core.relative(this._core.current()),
            f = c.loop || c.rewind;
        this._controls.$relative.toggleClass("disabled", !c.nav || d), c.nav && (this._controls.$previous.toggleClass("disabled", !f && e <= this._core.minimum(!0)), this._controls.$next.toggleClass("disabled", !f && e >= this._core.maximum(!0))), this._controls.$absolute.toggleClass("disabled", !c.dots || d), c.dots && (b = this._pages.length - this._controls.$absolute.children().length, c.dotsData && 0 !== b ? this._controls.$absolute.html(this._templates.join("")) : b > 0 ? this._controls.$absolute.append(new Array(b + 1).join(this._templates[0])) : b < 0 && this._controls.$absolute.children().slice(b).remove(), this._controls.$absolute.find(".active").removeClass("active"), this._controls.$absolute.children().eq(a.inArray(this.current(), this._pages)).addClass("active")) }, e.prototype.onTrigger = function(b) { var c = this._core.settings;
        b.page = { index: a.inArray(this.current(), this._pages), count: this._pages.length, size: c && (c.center || c.autoWidth || c.dotsData ? 1 : c.dotsEach || c.items) } }, e.prototype.current = function() { var b = this._core.relative(this._core.current()); return a.grep(this._pages, a.proxy(function(a, c) { return a.start <= b && a.end >= b }, this)).pop() }, e.prototype.getPosition = function(b) { var c, d, e = this._core.settings; return "page" == e.slideBy ? (c = a.inArray(this.current(), this._pages), d = this._pages.length, b ? ++c : --c, c = this._pages[(c % d + d) % d].start) : (c = this._core.relative(this._core.current()), d = this._core.items().length, b ? c += e.slideBy : c -= e.slideBy), c }, e.prototype.next = function(b) { a.proxy(this._overrides.to, this._core)(this.getPosition(!0), b) }, e.prototype.prev = function(b) { a.proxy(this._overrides.to, this._core)(this.getPosition(!1), b) }, e.prototype.to = function(b, c, d) { var e;!d && this._pages.length ? (e = this._pages.length, a.proxy(this._overrides.to, this._core)(this._pages[(b % e + e) % e].start, c)) : a.proxy(this._overrides.to, this._core)(b, c) }, a.fn.owlCarousel.Constructor.Plugins.Navigation = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) { "use strict"; var e = function(c) { this._core = c, this._hashes = {}, this.$element = this._core.$element, this._handlers = { "initialized.owl.carousel": a.proxy(function(c) { c.namespace && "URLHash" === this._core.settings.startPosition && a(b).trigger("hashchange.owl.navigation") }, this), "prepared.owl.carousel": a.proxy(function(b) { if (b.namespace) { var c = a(b.content).find("[data-hash]").addBack("[data-hash]").attr("data-hash"); if (!c) return;
                    this._hashes[c] = b.content } }, this), "changed.owl.carousel": a.proxy(function(c) { if (c.namespace && "position" === c.property.name) { var d = this._core.items(this._core.relative(this._core.current())),
                        e = a.map(this._hashes, function(a, b) { return a === d ? b : null }).join(); if (!e || b.location.hash.slice(1) === e) return;
                    b.location.hash = e } }, this) }, this._core.options = a.extend({}, e.Defaults, this._core.options), this.$element.on(this._handlers), a(b).on("hashchange.owl.navigation", a.proxy(function(a) { var c = b.location.hash.substring(1),
                e = this._core.$stage.children(),
                f = this._hashes[c] && e.index(this._hashes[c]);
            f !== d && f !== this._core.current() && this._core.to(this._core.relative(f), !1, !0) }, this)) };
    e.Defaults = { URLhashListener: !1 }, e.prototype.destroy = function() { var c, d;
        a(b).off("hashchange.owl.navigation"); for (c in this._handlers) this._core.$element.off(c, this._handlers[c]); for (d in Object.getOwnPropertyNames(this)) "function" != typeof this[d] && (this[d] = null) }, a.fn.owlCarousel.Constructor.Plugins.Hash = e }(window.Zepto || window.jQuery, window, document),
function(a, b, c, d) {
    function e(b, c) { var e = !1,
            f = b.charAt(0).toUpperCase() + b.slice(1); return a.each((b + " " + h.join(f + " ") + f).split(" "), function(a, b) { if (g[b] !== d) return e = !c || b, !1 }), e }

    function f(a) { return e(a, !0) } var g = a("<support>").get(0).style,
        h = "Webkit Moz O ms".split(" "),
        i = { transition: { end: { WebkitTransition: "webkitTransitionEnd", MozTransition: "transitionend", OTransition: "oTransitionEnd", transition: "transitionend" } }, animation: { end: { WebkitAnimation: "webkitAnimationEnd", MozAnimation: "animationend", OAnimation: "oAnimationEnd", animation: "animationend" } } },
        j = { csstransforms: function() { return !!e("transform") }, csstransforms3d: function() { return !!e("perspective") }, csstransitions: function() { return !!e("transition") }, cssanimations: function() { return !!e("animation") } };
    j.csstransitions() && (a.support.transition = new String(f("transition")), a.support.transition.end = i.transition.end[a.support.transition]), j.cssanimations() && (a.support.animation = new String(f("animation")), a.support.animation.end = i.animation.end[a.support.animation]), j.csstransforms() && (a.support.transform = new String(f("transform")), a.support.transform3d = j.csstransforms3d()) }(window.Zepto || window.jQuery, window, document);
// ---------------------------------------------------------------------------------
// Ticker Transition ~ URL: http://jonmifsud.com/open-source/jquery/jquery-webticker
// ---------------------------------------------------------------------------------
(function(e) {
    function n(e, t) { var s = e.data("settings"); if (typeof t === "undefined") t = false; if (t) { i(e) } var o = r(e);
        e.animate(o.css, o.time, "linear", function() { e.css(s.direction, "0");
            n(e, true) }) }

    function r(e) { var t = e.data("settings"); var n = e.children().first(); var r = Math.abs(-e.css(t.direction).replace("px", "").replace("auto", "0") - n.outerWidth(true)); var t = e.data("settings"); var i = r * 1e3 / t.speed; var s = {};
        s[t.direction] = e.css(t.direction).replace("px", "").replace("auto", "0") - r; return { css: s, time: i } }

    function i(e) { var t = e.data("settings");
        e.css("transition-duration", "0s").css(t.direction, "0"); var n = e.children().first(); if (n.hasClass("webticker-init")) n.remove();
        else e.children().last().after(n) }

    function s(e, t) { if (typeof t === "undefined") t = false; if (t) { i(e) } var n = r(e); var s = n.time / 1e3;
        s += "s";
        e.css(n.css).css("transition-duration", s) }

    function o(t, n, r) { var i;
        e.get(t, function(t) { var s = e(t);
            s.find("item").each(function() { var t = e(this),
                    n = { title: t.find("title").text(), link: t.find("link").text() };
                listItem = "<li><a href='" + n.link + "'>" + n.title + "</a></li>";
                i += listItem });
            r.webTicker("update", i, n) }) }

    function u(t) { var n = t.data("settings");
        t.width("auto"); var r = 0;
        t.children("li").each(function() { r += e(this).outerWidth(true) }); if (r < t.parent().width() || t.children().length == 1) { if (n.duplicate) { itemWidth = Math.max.apply(Math, t.children().map(function() { return e(this).width() }).get()); while (r - itemWidth < t.parent().width() || t.children().length == 1) { var i = t.children().clone();
                    t.append(i);
                    r = 0;
                    t.children("li").each(function() { r += e(this).outerWidth(true) });
                    itemWidth = Math.max.apply(Math, t.children().map(function() { return e(this).width() }).get()) } } else { var s = t.parent().width() - r;
                s += t.find("li:first").width(); var o = t.find("li:first").height();
                t.append('<li class="ticker-spacer" style="width:' + s + "px;height:" + o + 'px;"></li>') } } if (n.startEmpty) { var o = t.find("li:first").height();
            t.prepend('<li class="webticker-init" style="width:' + t.parent().width() + "px;height:" + o + 'px;"></li>') }
        r = 0;
        t.children("li").each(function() { r += e(this).outerWidth(true) });
        t.width(r + 200);
        widthCompare = 0;
        t.children("li").each(function() { widthCompare += e(this).outerWidth(true) }); while (widthCompare >= t.width()) { t.width(t.width() + 200);
            widthCompare = 0;
            t.children("li").each(function() { widthCompare += e(this).outerWidth(true) }) } } var t = function() { var e = document.createElement("p").style,
            t = ["ms", "O", "Moz", "Webkit"]; if (e["transition"] == "") return true; while (t.length)
            if (t.pop() + "Transition" in e) return true;
        return false }(); var a = { init: function(r) { r = jQuery.extend({ speed: 50, direction: "left", moving: true, startEmpty: true, duplicate: false, rssurl: false, hoverpause: true, rssfrequency: 0, updatetype: "reset" }, r); return this.each(function() { jQuery(this).data("settings", r); var i = jQuery(this);
                i.addClass("newsticker"); var a = i.wrap("<div class='mask'></div>");
                a.after("<span class='tickeroverlay-left'>&nbsp;</span><span class='tickeroverlay-right'>&nbsp;</span>"); var f = i.parent().wrap("<div class='tickercontainer'></div>");
                u(i); if (r.rssurl) { o(r.rssurl, r.type, i); if (r.rssfrequency > 0) { window.setInterval(function() { o(r.rssurl, r.type, i) }, r.rssfrequency * 1e3 * 60) } } if (t) { i.css("transition-duration", "0s").css(r.direction, "0");
                    s(i, false);
                    i.on("transitionend webkitTransitionEnd oTransitionEnd otransitionend", function(t) { if (!i.is(t.target)) { return false }
                        s(e(this), true) }) } else { n(e(this)) } if (r.hoverpause) { i.hover(function() { if (t) { var n = e(this).css(r.direction);
                            e(this).css("transition-duration", "0s").css(r.direction, n) } else jQuery(this).stop() }, function() { if (jQuery(this).data("settings").moving) { if (t) { s(e(this), false) } else { n(i) } } }) } }) }, stop: function() { var n = e(this).data("settings"); if (n.moving) { n.moving = false; return this.each(function() { if (t) { var r = e(this).css(n.direction);
                        e(this).css("transition-duration", "0s").css(n.direction, r) } else e(this).stop() }) } }, cont: function() { var r = e(this).data("settings"); if (!r.moving) { r.moving = true; return this.each(function() { if (t) { s(e(this), false) } else { n(e(this)) } }) } }, update: function(t, n, r, i) { n = n || "reset"; if (typeof r === "undefined") r = true; if (typeof i === "undefined") i = false; if (typeof t === "string") { t = e(t) } var s = e(this);
            s.webTicker("stop"); var o = e(this).data("settings"); if (n == "reset") { s.html(t);
                s.css(o.direction, "0");
                u(s) } else if (n == "swap") { s.children("li").addClass("old"); for (var a = 0; a < t.length; a++) { id = e(t[a]).data("update");
                    match = s.find('[data-update="' + id + '"]'); if (match.length < 1) { if (r) { if (s.find(".ticker-spacer:first-child").length == 0 && s.find(".ticker-spacer").length > 0) { s.children("li.ticker-spacer").before(t[a]) } else { s.append(t[a]) } } } else s.find('[data-update="' + id + '"]').replaceWith(t[a]); }
                s.children("li.webticker-init, li.ticker-spacer").removeClass("old"); if (i) s.children("li").remove(".old");
                stripWidth = 0;
                s.children("li").each(function() { stripWidth += e(this).outerWidth(true) });
                s.width(stripWidth + 200) }
            s.webTicker("cont") } };
    e.fn.webTicker = function(t) { if (a[t]) { return a[t].apply(this, Array.prototype.slice.call(arguments, 1)) } else if (typeof t === "object" || !t) { return a.init.apply(this, arguments) } else { e.error("Method " + t + " does not exist on jQuery.webTicker") } } })(jQuery);
// ---------------------------------------------
// sticky Widgets 1.1.0 ~ URL: http://www.pxt.jp
// ---------------------------------------------
//sticky sidebar plugin v1.7
! function(s) { var i = [],
        o = 0,
        f = 0,
        c = 0,
        r = 0,
        p = s(window);

    function e(s) { if (s.sidebarFixData.apply) { var t = s.sidebarFixData.frame.offset().top + s.height(),
                i = p.height() + p.scrollTop(),
                o = s.offset().top + s.height(),
                e = s.sidebarFixData.frame.offset().top + s.sidebarFixData.frame.height(); if (p.scrollTop() < s.sidebarFixData.frame.offset().top - r) s.css("position", "static").css("left", 0).css("top", 0).css("width", "auto");
            else if (e <= p.scrollTop() + s.height() + r && e <= i) s.css("position", "static").css("left", 0).css("top", s.sidebarFixData.frame.height() - s.height()).css("width", "auto").css("width", s.width()).css("position", "relative");
            else if (!(p.scrollTop() >= s.offset().top - r && i <= o && "relative" == s.css("position")))
                if (f < 0 && 0 < c && p.scrollTop() >= s.offset().top - r && i <= o) { if ("relative" != s.css("position")) { var a = s.offset().top - s.sidebarFixData.frame.offset().top;
                        s.css("position", "static").css("left", 0).css("top", a).css("width", "auto").css("width", s.width()).css("position", "relative") } } else if (0 < f && c < 0 && p.scrollTop() >= s.offset().top - r && i <= o) { if ("relative" != s.css("position")) { a = s.offset().top - s.sidebarFixData.frame.offset().top;
                    s.css("position", "static").css("left", 0).css("top", a).css("width", "auto").css("width", s.width()).css("position", "relative") } } else f < 0 ? 0 <= e - s.height() - p.scrollTop() - r && p.scrollTop() > s.sidebarFixData.frame.offset().top + r && "fixed" != s.css("position") && s.css("position", "static").css("left", s.offset().left - p.scrollLeft()).css("top", r).css("width", "auto").css("width", s.width()).css("position", "fixed") : 0 < f && (s.height() <= p.height() - r ? s.css("position", "static").css("left", s.offset().left - p.scrollLeft()).css("top", r).css("width", "auto").css("width", s.width()).css("position", "fixed") : t <= i && s.css("position", "static").css("left", s.offset().left - p.scrollLeft()).css("top", p.height() - s.height()).css("width", "auto").css("width", "auto").css("width", s.width()).css("position", "fixed")) } else s.css("overflow", "visible").css("position", "static") }
    s.fn.sidebarFix = function(s) { i.push(this), this.sidebarFixData = s, this.css("overflow", "hidden").css("position", "static").css("left", 0).css("top", 0).css("top", 0).css("width", "auto"), this.sidebarFixData.apply = !0, this.height() >= s.frame.height() && (this.sidebarFixData.apply = !1), this.offset().top != s.frame.offset().top && (this.sidebarFixData.apply = !1), s.topBuffer && (r = s.topBuffer), e(this) }, p.resize(function(s) { return function() { var s = i; for (var t in i = [], s) s[t].sidebarFix({ frame: s[t].sidebarFixData.frame }) }(), !0 });

    function t(s) { for (var t in f = p.scrollTop() - o, i) e(i[t]); return o = p.scrollTop(), c = f, !0 }
    p.bind("scroll", t), p.bind("gestureend", t) }(jQuery);
/*]]>*/
//<![CDATA[
// ---------------------------------------------
// NewsTicker Feed
// ---------------------------------------------
$(".ticker").each(function() {
    var t = $(this).attr("data-no"),
        e = $(this).attr("data-option"),
        a = $(this).parent().parent(),
        r = a.find("h3.title").text(),
        n = Math.floor(Math.random() * t + 1);
    // if ((a.find("h3.title").remove(), e.match("recent"))) var s = "/feeds/posts/default?alt=json-in-script&max-results=" + t;
    // else s = e.match("random") ? "/feeds/posts/default?alt=json-in-script&orderby=updated&start-index=" + n + "&max-results=" + t : "/feeds/posts/default/-/" + e + "?alt=json-in-script&max-results=" + t;
    if ((a.find("h3.title").remove(), e.match("recent"))) var s = "https://glass-demo.blogspot.com/feeds/posts/default?alt=json-in-script&max-results=" + t;
    else s = e.match("random") ? "https://glass-demo.blogspot.com/feeds/posts/default?alt=json-in-script&orderby=updated&start-index=" + n + "&max-results=" + t : "https://glass-demo.blogspot.com/feeds/posts/default/-/" + e + "?alt=json-in-script&max-results=" + t;
    $.ajax({
        url: s,
        type: "get",
        dataType: "jsonp",
        success: function(t) {
            for (var e = "", a = "<ul>", n = 0; n < t.feed.entry.length; n++) {
                for (var s = 0; s < t.feed.entry[n].link.length; s++)
                    if ("alternate" == t.feed.entry[n].link[s].rel) {
                        e = t.feed.entry[n].link[s].href;
                        break;
                    }
                var c = t.feed.entry[n].title.$t,
                    l = " ";
                try {
                    l = t.feed.entry[n].category[0].term;
                } catch (a) {
                    l = "";
                }
                a += '<li><a href="/search/label/' + l + '" title="' + l + '" class="item-tag">' + l + '</a><span class="item-title"><a href="' + e + '" title="' + c + '">' + c + "</a></span></li>";
            }
            (a += "</ul>"),
            $(".ticker").each(function() {
                $(this).html(a),
                    $(this).find("ul").webTicker(),
                    $(this)
                    .find(".tickercontainer")
                    .append("<h3 class='title'>" + r + "</h3>");
            });
        },
    });
});

// ---------------------------------------------
// ScrollUP
// ---------------------------------------------
$(window).scroll(function() {
    100 < $(this).scrollTop() ?
        ($(".toup-btn").css({
                transform: "translate(0, -28px)",
                "border-top-right-radius": "10px",
                "border-top-left-radius": "10px",
                "border-bottom-left-radius": "0",
                "border-bottom-right-radius": "0",
                opacity: "1",
            }),
            $(".togglenight-btn").css({
                "border-top-right-radius": "0",
                "border-top-left-radius": "0",
                "border-bottom-left-radius": "10px",
                "border-bottom-right-radius": "10px",
            })) :
        ($(".toup-btn,.togglenight-btn").css({
                transform: "translate(0, 0)",
                "border-top-right-radius": "10px",
                "border-top-left-radius": "10px",
                "border-bottom-left-radius": "10px",
                "border-bottom-right-radius": "10px",
            }),
            $(".toup-btn").css({ opacity: "0" }));
});
$(".toup-btn").click(function() {
    return $("html, body").animate({ scrollTop: 0 }, 600), !1;
});

// ---------------------------------------------
// Dark Mode
// ---------------------------------------------
$("#nightmode").click(function() {
        $("body").toggleClass("nightmode");
    }),
    $("body").toggleClass(localStorage.toggled),
    $("#nightmode").click(function() {
        "nightmode" != localStorage.toggled ? ($("body").toggleClass("nightmode", !0), (localStorage.toggled = "nightmode")) : ($("body").toggleClass("nightmode", !1), (localStorage.toggled = ""));
    });

// ---------------------------------------------
// Article Font Size In/Decrease
// ---------------------------------------------
// When + or - buttons are clicked the font size of the h1 is increased/decreased by 2
// The max is set to 50px for this demo, the min is set by min font in the user's style sheet
function getSize() {
    (size = $(".entry-content").css("font-size")), (height = $(".entry-content").css("line-height")), (size = parseInt(size, 10)), (height = parseInt(height, 10));
}
getSize(),
    $("#up").on("click", function() {
        size + 2 <= 31 &&
            height + 2 <= 38 &&
            $(".entry-content").css({
                "font-size": "+=2",
                "line-height": "+=2px",
            });
    }),
    $("#down").on("click", function() {
        size - 2 >= 11 &&
            height - 2 >= 20 &&
            $(".entry-content").css({
                "font-size": "-=2",
                "line-height": "-=2px",
            });
    });

// ---------------------------------------------
// Social Media Counter Widget
// ---------------------------------------------
$("aside .LinkList").each(function() {
    var xx = $(this).children("h3").text();
    if (xx.indexOf("[socm1]") >= 0) {
        $(this).addClass("counter_a");
        $(".counter_a h3").text(function(index, text) {
            return text.replace("[socm1]", "");
        });
        $(".counter_a li").each(function() {
            var ces = $(this).find("a").attr("href"),
                ze = $(this).text(),
                arr = ze.split("index.html");
            $(this).html("<div class='item " + arr[0] + "'><a href='" + ces + "' title='" + arr[0] + "'><i class='fa fa-" + arr[0] + "'></i><span class='item-count'>" + arr[1] + "</span></a></div>");
        });
    } else if (xx.indexOf("[socm2]") >= 0) {
        $(this).addClass("counter_b");
        $(".counter_b h3").text(function(index, text2) {
            return text2.replace("[socm2]", "");
        });
        $(".counter_b li").each(function() {
            var ces = $(this).find("a").attr("href"),
                ze = $(this).text(),
                arr = ze.split("index.html");
            $(this).html("<div class='item " + arr[0] + "'><a href='" + ces + "' title='" + arr[0] + "'><i class='fa fa-" + arr[0] + "'></i><span class='item-count'>" + arr[1] + "</span></a></div>");
        });
    }
});

// ---------------------------------------------
// Popup Panel
// ---------------------------------------------
var popup = function(t, i, o) {
    $(t).html('<div class="popup-mask"></div><div class="popup-content"></div>');
    var n = $(t).find(".popup-mask"),
        a = $(t).find(".popup-content"),
        p = "position: fixed;z-index: 99999;overflow: hidden;box-shadow: 1px 1px 50px rgba(0,0,0,.3);",
        e = "position: fixed;z-index: 99999;background: #fafafa;overflow: hidden;";
    n.attr("style", "position: fixed;top: 0;right: 0;left: 0;bottom: 0;background: rgb(0 0 0 / 90%);z-index: 1001;display: none;"), a.attr("style", p);
    var h = 0,
        r = "",
        d = "",
        s = "",
        f = "",
        c = o.width,
        l = o.height,
        u = o.duration || "fast",
        g = {},
        x = o.content;
    "object" === $.type(x) ? a.html($(x).prop("outerHTML")) : a.html(x),
        (this.popupleft = function() {
            var o;
            (l = l || "100%"),
            (r = s || r || "top:0;"),
            (d = "left: -" + (c = c || "290px") + ";"),
            (f = ""),
            (g.left = "-" + c),
            (o = { left: h }),
            $(i).on("click", function() {
                    n.show(), a.attr("style", p + r + d + s + f + "width:" + c + ";height:" + l), a.animate(o, u), a.children(":first").show();
                }),
                $(t).on("click", ".popup-mask", function() {
                    n.hide(),
                        a.animate(g, u, function() {
                            $(this).children(":first").hide(), $(this).attr("style", e);
                        });
                });
        }),
        (this.setleft = function(t) {
            return (h = t), 0, (d = "left:" + t + "px;"), (f = ""), this;
        });
};
$(function() {
    new popup("#leftPopup", "#po-panel", {
        content: $("#content"),
        duration: 500,
    }).popupleft();
    if (0 === $("#poppanel").html().length) $("#leftPopup,#po-panel").remove();
});
// Panel Menu Dropdown
$(function(l) {
        var e = -1,
            n = "";
        var h3 = l("#poppanel .LinkList").children("h3:first").text();
        l("#poppanel")
            .find("ul")
            .find("li")
            .each(function() {
                for (var i = l(this).text(), a = l(this).find("a").attr("href"), t = 0, u = 0; u < i.length && -1 != (t = i.indexOf("_", t)); u++) t++;
                if (((level = u), level > e && ("<ul>", (n += "<ul>")), level < e)) {
                    offset = e - level;
                    for (u = 0; u < offset; u++) "</ul></li>", (n += "</ul></li>");
                }
                (i = i.replace(/_/gi, "")), "<li><a href='" + a + "'>" + i + "</a>", (n += "<li><a href='" + a + "'>");
                for (u = 0; u < level; u++) n += "";
                (n += i + "</a>"), (e = level);
            });
        for (var i = 0; e >= i; i++) "</ul>", (n += "</ul>"), 0 != i && ("</li>", (n += "</li>"));
        l("#poppanel .LinkList").html(n),
            l("#poppanel .LinkList").prepend("<h3 class='title'>" + h3 + "</h3>"),
            l("#poppanel > .LinkList > ul").attr("id", "nav"),
            l("#poppanel ul > li > ul").parent("li").addClass("parent"),
            l("#poppanel .widget").attr("style", "display:block!important;");
    }),
    $(function() {
        $("#poppanel ul li ul").parent("li").addClass("has-child"),
            $("#poppanel ul li ul").addClass("its-children"),
            $("#poppanel ul li.has-child > a").addClass("its-parent").attr("href", "javascript:;"),
            $("#poppanel ul li .its-parent").on("click", function(e) {
                $(this).parent("li").toggleClass("downed");
                e.preventDefault();
                $(".nav-menu ul li").each(function() {
                    $(this).hoverTimeout(
                        0,
                        function() {
                            $(this).children("ul").slideDown();
                        },
                        0,
                        function() {
                            $(this).children("ul").hide();
                        }
                    );
                });
            });
    });

// ---------------------------------------------
// Popup Search Form
// ---------------------------------------------
$(function() {
    $("#po-search").on("click", function(e) {
            e.preventDefault(), $("#search").addClass("open"), $('#search > form > input[type="search"]').focus();
        }),
        $("#search, #search button.close").on("click keyup", function(e) {
            (e.target != this && "close" != e.target.className && 27 != e.keyCode) || $(this).removeClass("open");
        });
});

// ---------------------------------------------
// Main Menu Dropdown
// ---------------------------------------------
$(function() {
        var n = -1,
            e = "";
        $("#main-menu")
            .delay(800)
            .queue(function(next) {
                $(this).css("visibility", "visible");
                next();
            });
        $("#main-menu")
            .find("ul")
            .find("li")
            .each(function() {
                for (var i = $(this).text(), l = $(this).find("a").attr("href"), t = 0, a = 0; a < i.length && -1 != (t = i.indexOf("_", t)); a++) t++;
                if (((level = a), level > n && (e += "<ul>"), level < n))
                    for (offset = n - level, a = 0; a < offset; a++) e += "</ul></li>";
                for (i = i.replace(/_/gi, ""), e += "<li><a href='" + l + "'>", a = 0; a < level; a++) e += "";
                (e += i + "</a>"), (n = level);
            });
        for (var i = 0; n >= i; i++)(e += "</ul>"), 0 != i && (e += "</li>");
        $("#main-menu .LinkList").html(e),
            $("#main-menu > .LinkList > ul").attr("id", "nav"),
            $("#main-menu ul > li > ul").parent("li").addClass("has-sub"),
            $("#main-menu ul > .has-sub > a").append('<i class="fa fa-caret-down"></i>'),
            $("#main-menu .widget").attr("style", "display:block!important;");
    }),
    $(document).ready(function() {
        $("ul#sub-menu").parent("li").addClass("hasSub"),
            $(".nav-menu ul li").each(function() {
                $(this).hoverTimeout(
                    0,
                    function() {
                        $(this).children("ul").slideDown();
                    },
                    0,
                    function() {
                        $(this).children("ul").hide();
                    }
                );
            });
    });

// ---------------------------------------------
// Mega Menu
// ---------------------------------------------
$(function() {
    $(".main-menu .LinkList ul li a").each(function() {
        var e = $(this),
            t = e.text(),
            r = e.attr("href").split("index.html"),
            l = r[0],
            c = r[1];
        // V Style Feed
        if ("mega-v" === l) {
            var i = e.parent("li");
            e.addClass("mega-icon"),
                i.addClass(l),
                e.attr("href", "/search/label/" + t),
                t.match(/<.*>/g),
                t.replace(/<.*>/g, ""),
                $.ajax({
                    url: "/feeds/posts/default/-/" + t + "?alt=json-in-script&max-results=" + c,
                    type: "get",
                    dataType: "jsonp",
                    success: function(e) {
                        for (var t = new Array(), r = "", l = 0; l < e.feed.entry.length; l++) {
                            for (
                                var c, n = e.feed.entry[l], g = n.title.$t, o = (n.author[0].name.$t, e.feed.entry[0].published.$t), p = n.category[0].term, m = o.substring(0, 4), f = o.substring(5, 7), h = o.substring(8, 10), u = (parseInt(f, 10), 0); u < n.link.length; u++
                            )
                                if ("alternate" == n.link[u].rel) {
                                    c = n.link[u].href;
                                    break;
                                }
                            if ("content" in n) var v = n.content.$t;
                            (s = v), (a = s.indexOf("<img")), (b = s.indexOf('src="', a)), (h = s.indexOf('"', b + 5)), (d = s.substr(b + 5, h - b - 5)), (t[l] = -1 != a && -1 != b && -1 != h && "" != d ? d : no_image);
                            try {
                                (T = n.category[0].term), (tgg = T.slice(0, 1));
                            } catch (r) {
                                (T = ""), (cl = "notag"), (tgg = "");
                            }
                            r =
                                r +
                                '<li class="mega-post clearfix"><a title="' +
                                p +
                                '" href="' +
                                c +
                                '" class="mega_lk__thumb"><img alt="' +
                                g +
                                '" src="' +
                                t[l] +
                                '"></img></a><div class="mega-contnt"><div class="mega-tags ' +
                                tgg +
                                '"><a title="' +
                                p +
                                '" href="/search/label/' +
                                p +
                                '"><svg class="tag-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>' +
                                p +
                                '</a></div><h3 class="mega_lk__title"><a title="' +
                                g +
                                '" href="' +
                                c +
                                '">' +
                                g +
                                "</a></h3></div></li>";
                        }
                        i.append('<ul class="mega-menu clearfix">' + r + "</ul>");
                        i.children(".mega-icon").prepend('<i class="fa fa-bars"></i>');
                    },
                });
        }
        // H Style Feed
        else if ("mega-h" === l) {
            i = e.parent("li");
            e.addClass("mega-icon"),
                i.addClass(l),
                e.attr("href", "/search/label/" + t),
                t.match(/<.*>/g),
                t.replace(/<.*>/g, ""),
                $.ajax({
                    url: "https://glass-demo.blogspot.com/feeds/posts/default/-/" + t + "?alt=json-in-script&max-results=" + c,
                    type: "get",
                    dataType: "jsonp",
                    success: function(e) {
                        for (var t = new Array(), r = "", l = 0; l < e.feed.entry.length; l++) {
                            for (
                                var c, n = e.feed.entry[l], g = n.title.$t, o = (n.author[0].name.$t, e.feed.entry[0].published.$t), p = n.category[0].term, m = o.substring(0, 4), f = o.substring(5, 7), h = o.substring(8, 10), u = (parseInt(f, 10), 0); u < n.link.length; u++
                            )
                                if ("alternate" == n.link[u].rel) {
                                    c = n.link[u].href;
                                    break;
                                }
                            if ("content" in n) var v = n.content.$t;
                            (s = v), (a = s.indexOf("<img")), (b = s.indexOf('src="', a)), (h = s.indexOf('"', b + 5)), (d = s.substr(b + 5, h - b - 5)), (t[l] = -1 != a && -1 != b && -1 != h && "" != d ? d : no_image);
                            try {
                                (T = n.category[0].term), (tgg = T.slice(0, 1));
                            } catch (r) {
                                (T = ""), (cl = "notag"), (tgg = "");
                            }
                            r =
                                r +
                                '<li class="mega-post clearfix"><a title="' +
                                p +
                                '" href="' +
                                c +
                                '" class="mega_lk__thumb"><img alt="' +
                                g +
                                '" src="' +
                                t[l] +
                                '"></img></a><div class="mega-contnt"><div class="mega-tags ' +
                                tgg +
                                '"><a title="' +
                                p +
                                '" href="/search/label/' +
                                p +
                                '"><svg class="tag-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>' +
                                p +
                                '</a></div><h3 class="mega_lk__title"><a title="' +
                                g +
                                '" href="' +
                                c +
                                '">' +
                                g +
                                "</a></h3></div></li>";
                        }
                        i.append('<ul class="mega-menu clearfix owl-carousel">' + r + "</ul>"), i.children(".mega-icon").prepend('<i class="fa fa-bars"></i>');
                        $(".mega-menu.owl-carousel").owlCarousel({
                            autoplay: !1,
                            lazyLoad: !1,
                            loop: !0,
                            margin: 20,
                            responsiveClass: !0,
                            autoHeight: !0,
                            rtl: !1,
                            autoplayTimeout: 7e3,
                            smartSpeed: 800,
                            nav: !1,
                            dots: !1,
                            navText: ['<i class="catch fa fa-angle-left"></i>', '<i class="catch fa fa-angle-right"></i>'],
                            responsive: { 0: { items: 2 }, 600: { items: 5 }, 1024: { items: 6 }, 1366: { items: 7 } },
                        });
                    },
                });
        }
    });
});

// ---------------------------------------------
// Slider Style Feed
// ---------------------------------------------
$(".slider").each(function() {
    var t = $(this),
        e = t.attr("data-option"),
        l = t.attr("data-no"),
        ksd = $(this).parent().prev("h3"),
        r = t.attr("data-no"),
        i = (t.attr("data-slide"), t.attr("data-type")),
        n = Math.floor(Math.random() * l + 1);
    if (e.match("recent")) {
        ksd.prepend("<a class='getmore' href='/search'><strong>" + more_text + "</strong></a>");
    } else if (e.match("random")) {
        ksd.prepend("<a class='getmore' href='index.html'><strong>" + more_text + "</strong></a>");
    } else {
        ksd.prepend("<a class='getmore' href='/search/label/" + e + "'><strong>" + more_text + "</strong></a>");
    }
    if (e.match("recent")) var p = "https://glass-demo.blogspot.com/feeds/posts/default?alt=json-in-script&max-results=" + l;
    else p = e.match("random") ? "https://glass-demo.blogspot.com/feeds/posts/default?alt=json-in-script&orderby=updated&start-index=" + n + "&max-results=" + l : "https://glass-demo.blogspot.com/feeds/posts/default/-/" + e + "?alt=json-in-script&max-results=" + l;
    $.ajax({
        type: "GET",
        url: p,
        dataType: "jsonp",
        beforeSend: function() {
            t.append('<div class="load_in"><i class="fa fa-spinner fa-spin"></i></div>');
        },
        success: function(t) {
            for (var l = '<div class="' + i + '"><div class="lk__wrapper owl-carousel">', o = "", n = 0; n < t.feed.entry.length; n++) {
                for (var p = t.feed.entry[n], g = p.title.$t, h = 0; h < p.link.length; h++)
                    if (("replies" == p.link[h].rel && "text/html" == p.link[h].type && (p.link[h].title, p.link[h].href), "alternate" == p.link[h].rel)) {
                        var m = p.link[h].href;
                        break;
                    }
                var f,
                    u = p.content.$t,
                    v = t.feed.entry[n].author[0].name.$t,
                    w = (t.feed.entry[n].author[0].gd$image.src, t.feed.entry[n].published.$t),
                    y = w.substring(0, 4),
                    x = w.substring(5, 7),
                    k = w.substring(8, 10) + " " + months[parseInt(x, 10)] + " " + y,
                    Q = $("<p>").html(u).text().substring(0, 70) + "...",
                    A = "";
                try {
                    f = p.media$thumbnail.url.replace("default", "hqdefault").replace("s72", "s640");
                } catch (t) {
                    (s = p.content.$t), (a = s.indexOf("<img")), (b = s.indexOf('src="', a)), (c = s.indexOf('"', b + 5)), (d = s.substr(b + 5, c - b - 5)), (f = -1 != a && -1 != b && -1 != c && "" != d ? d : no_image);
                }
                try {
                    (C = p.category[0].term), (tgg = C.slice(0, 1));
                } catch (l) {
                    (C = ""), (A = "notag"), (tgg = "");
                }
                (o += '<li class="lk__item">'),
                (o += '<div class="lk__thumb"><a href="' + m + '" title="' + g + '"><img alt="' + g + '" src="' + f + '"></img></a></div>'),
                (o += '<div class="lk__content">'),
                (o +=
                    '<span class="tag ' +
                    tgg +
                    '"><a class="tag ' +
                    A +
                    '" href="/search/label/' +
                    C +
                    '" title="' +
                    C +
                    '"><svg class="tag-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>' +
                    C +
                    "</a></span>"),
                (o += '<h3 class="lk__title"><a href="' + m + '" title="' + g + '">' + g + "</a></h3>"),
                (o += '<div class="lk__meta"><span class="lk__date"><i class="fa fa-clock-o"></i>' + k + "</span></div>"),
                (o += '<div class="lk__snip">' + Q + "</div>"),
                (o += "</div>"),
                (o += "</li>");
            }
            (l += o += "</div></div>"),
            $(".slider").each(function() {
                    $(this).attr("data-option") == e && $(this).attr("data-type") == i && $(this).attr("data-no") == r && $(this).parent().html(l);
                    $(".slider_b").parent().parent().css({
                        padding: "0",
                        background: "0",
                    });
                }),
                $(".slider_a .lk__wrapper").owlCarousel({
                    autoplay: !0,
                    lazyLoad: !1,
                    loop: !0,
                    margin: 0,
                    responsiveClass: !0,
                    autoHeight: !0,
                    rtl: !1,
                    autoplayHoverPause: true,
                    autoplayTimeout: 7e3,
                    smartSpeed: 800,
                    nav: !1,
                    dots: !1,
                    navText: ['<i class="catch fa fa-angle-left"></i>', '<i class="catch fa fa-angle-right"></i>'],
                    responsive: { 0: { items: 1 }, 600: { items: 2 }, 870: { items: 3 }, 1024: { items: 4 }, 1366: { items: 5 }, 1680: { items: 6 } },
                }),
                $(".slider_b .lk__wrapper").owlCarousel({
                    autoplay: !0,
                    lazyLoad: !1,
                    loop: !0,
                    margin: 20,
                    responsiveClass: !0,
                    autoHeight: !0,
                    rtl: !1,
                    autoplayHoverPause: true,
                    autoplayTimeout: 7e3,
                    smartSpeed: 800,
                    nav: !0,
                    dots: !0,
                    navText: ['<i class="catch fa fa-angle-left"></i>', '<i class="catch fa fa-angle-right"></i>'],
                    responsive: { 0: { items: 1 }, 600: { items: 1 }, 870: { items: 1 }, 1024: { items: 1 }, 1366: { items: 1 } },
                }),
                $(".slider_c .lk__wrapper").owlCarousel({
                    autoplay: !0,
                    lazyLoad: !1,
                    loop: !0,
                    margin: 10,
                    responsiveClass: !0,
                    autoHeight: !0,
                    rtl: !1,
                    autoplayHoverPause: true,
                    autoplayTimeout: 7e3,
                    smartSpeed: 800,
                    nav: !1,
                    dots: !1,
                    navText: ['<i class="catch fa fa-angle-left"></i>', '<i class="catch fa fa-angle-right"></i>'],
                    responsive: { 0: { items: 1 }, 600: { items: 2 }, 870: { items: 3 }, 1024: { items: 4 }, 1366: { items: 5 }, 1680: { items: 6 } },
                });
            if (0 === $(".post-meta .post-time").length) $(".lk__date").remove();
        },
    });
});

// ---------------------------------------------
// Block Style Feed
// ---------------------------------------------
$(".default").each(function() {
    var t = $(this),
        e = t.attr("data-option"),
        r = t.attr("data-no"),
        l = t.attr("data-no"),
        ksr = $(this).parent().prev("h3"),
        i = t.attr("data-type"),
        n = t.parent().parent(),
        o = Math.floor(Math.random() * r + 1);
    if (e.match("recent")) {
        ksr.prepend("<a class='getmore' href='/search'><strong>" + more_text + "</strong></a>");
    } else if (e.match("random")) {
        ksr.prepend("<a class='getmore' href='index.html'><strong>" + more_text + "</strong></a>");
    } else {
        ksr.prepend("<a class='getmore' href='/search/label/" + e + "'><strong>" + more_text + "</strong></a>");
    }
    if (e.match("recent")) var p = "https://glass-demo.blogspot.com/feeds/posts/default?alt=json-in-script&max-results=" + r;
    else p = e.match("random") ? "https://glass-demo.blogspot.com/feeds/posts/default?alt=json-in-script&orderby=updated&start-index=" + o + "&max-results=" + r : "https://glass-demo.blogspot.com/feeds/posts/default/-/" + e + "?alt=json-in-script&max-results=" + r;
    $.ajax({
        type: "GET",
        url: p,
        dataType: "jsonp",
        beforeSend: function() {
            t.append('<div class="load_in"><i class="fa fa-spinner fa-spin"></i></div>');
        },
        success: function(t) {
            for (var r = '<div class="' + i + '"><div class="lk__wrapper">', n = "", o = 0; o < t.feed.entry.length; o++) {
                for (var p = t.feed.entry[o], h = p.title.$t, g = 0; g < p.link.length; g++)
                    if (("replies" == p.link[g].rel && "text/html" == p.link[g].type && (p.link[g].title, p.link[g].href), "alternate" == p.link[g].rel)) {
                        var f = p.link[g].href;
                        break;
                    }
                var u,
                    m = p.content.$t,
                    v = t.feed.entry[o].author[0].name.$t,
                    w = (t.feed.entry[o].author[0].gd$image.src, t.feed.entry[o].published.$t),
                    x = w.substring(0, 4),
                    k = w.substring(5, 7),
                    y = w.substring(8, 10) + " " + months[parseInt(k, 10)] + " " + x,
                    A = $("<p>").html(m).text().substring(0, 70) + "...",
                    C = "",
                    _ = "";
                try {
                    u = p.media$thumbnail.url.replace("default", "hqdefault").replace("s72", "s640");
                } catch (t) {
                    (s = p.content.$t), (a = s.indexOf("<img")), (b = s.indexOf('src="', a)), (c = s.indexOf('"', b + 5)), (d = s.substr(b + 5, c - b - 5)), (u = -1 != a && -1 != b && -1 != c && "" != d ? d : no_image);
                }
                try {
                    (C = p.category[0].term), (tgg = C.slice(0, 1));
                } catch (r) {
                    (C = ""), (_ = "notag"), (tgg = "");
                }
                (n += '<li class="lk__item">'),
                (n += '<div class="lk__thumb"><a href="' + f + '" title="' + h + '"><img alt="' + h + '" src="' + u + '"></img></a></div>'),
                (n += '<div class="lk__content">'),
                (n +=
                    '<span class="tag ' +
                    tgg +
                    '"><a class="tag ' +
                    _ +
                    '" href="/search/label/' +
                    C +
                    '" title="' +
                    C +
                    '"><svg class="tag-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>' +
                    C +
                    "</a></span>"),
                (n += '<h3 class="lk__title"><a href="' + f + '" title="' + h + '">' + h + "</a></h3>"),
                (n += '<div class="lk__meta"><span class="lk__date"><i class="fa fa-clock-o"></i>' + y + "</span></div>"),
                (n += '<div class="lk__snip">' + A + "</div>"),
                (n += "</div>"),
                (n += "</li>");
            }
            (r += n += "</div></div>"),
            $(".default").each(function() {
                $(this).attr("data-option") == e && $(this).attr("data-type") == i && $(this).attr("data-no") == l && $(this).parent().html(r);
            });
            if (0 === $(".post-meta .post-time").length) $(".lk__date").remove();
        },
    });
});

// ---------------------------------------------
// Recent Comments Widget
// ---------------------------------------------
$(".recentcomments").each(function() {
    var x = $(this),
        e = $(this).attr("data-no");
    $.ajax({
        url: "https://glass-demo.blogspot.com/feeds/comments/default?alt=json-in-script&max-results=" + e,
        type: "get",
        dataType: "jsonp",
        beforeSend: function() {
            x.append('<div class="load_in"><i class="fa fa-spinner fa-spin"></i></div>');
        },
        success: function(t) {
            for (var n = "", a = '<ul class="cmm-widget">', r = 0; r < t.feed.entry.length && r != t.feed.entry.length; r++) {
                for (var i = 0; i < t.feed.entry[r].link.length; i++)
                    if ("alternate" == t.feed.entry[r].link[i].rel) {
                        n = t.feed.entry[r].link[i].href;
                        break;
                    }
                if ("content" in t.feed.entry[r]) var l = t.feed.entry[r].content.$t;
                else if ("summary" in b_rc) l = t.feed.entry[r].summary.$t;
                else l = "";
                (l = l.replace(/<\S[^>]*>/g, "")).length > 70 && (l = l.substring(0, 50) + "...");
                var s = t.feed.entry[r].author[0].name.$t,
                    w = t.feed.entry[r].published.$t,
                    z = w.substring(0, 4),
                    y = w.substring(5, 7),
                    x = w.substring(8, 10),
                    uu = months[parseInt(y, 10)] + " " + x + ", " + z,
                    g = t.feed.entry[r].author[0].gd$image.src;
                if (g.match("http://img1.blogblog.com/img/blank.gif")) var m = "http://img1.blogblog.com/img/anon36.png";
                else if (g.match("http://img2.blogblog.com/img/b16-rounded.gif")) m = "http://img1.blogblog.com/img/anon36.png";
                else m = g;
                a += '<li><div class="cmm-info"><a href="' + n + '">' + s + ':</a><span><a href="' + n + '"> ' + l + '</a></span><div class="cmm-date">' + uu + "</div></div></li>";
            }
            (a += '</ul><div class="clear"/>'),
            $(".recentcomments").each(function() {
                $(this).attr("data-no") == e && $(this).parent().html(a);
            });
        },
    });
});

// ---------------------------------------------
// Popular Posts Widget
// ---------------------------------------------
$(".widget .snippet-item").each(function() {
    var t = $(this).text().substr(0, 70),
        e = t.lastIndexOf(" ");
    e > 10 && $(this).text(t.substr(0, e).replace(/[?,!\.-:;]*$/, "..."));
});
$(".PopularPosts .post").each(function() {
    $(this)
        .find(".post-content")
        .prepend("<span class='noimg'><img src='" + no_image + "'/></span>");
});
$(".FeaturedPost .item-thumbnail").each(function() {
    $(this)
        .find("img")
        .attr("srcset", function(t, e) {
            return e.replace("w72-h72", "w300-h300");
        });
});

// ---------------------------------------------
// Author Widget
// ---------------------------------------------
$(function() {
    $('span[name="author-social"]').before($(".post-author-social .widget-content").html()),
        $(".post-author-social .widget-content").html(""),
        $('span[name="author-post"]').before($(".post-author-desc .widget-content").html());
});

// ---------------------------------------------
// Article ADS
// ---------------------------------------------
$(function() {
    ($cd = $(".centerad").html()),
    ($td = $(".topad").html()),
    ($bd = $(".bottomad").html());
    $(".cadd").before($cd),
        $(".tadd").before($td),
        $(".badd").before($bd),
        $(".topad,.bottomad,.centerad").html(""),
        ($centerad = $("#centerAd").html()),
        $("#PostBody br:eq(3)").replaceWith($centerad),
        $("#centerAd").remove();
});

// ---------------------------------------------
// Related Posts Feed
// ---------------------------------------------
$("#related-posts").each(function() {
    var w = $(this),
        e = $(this).html();
    $.ajax({
        url: "/feeds/posts/default/-/" + e + "?alt=json-in-script&max-results=" + related_number,
        type: "get",
        dataType: "jsonp",
        success: function(e) {
            for (var t = "", a = '<div class="related">', s = 0; s < e.feed.entry.length; s++) {
                for (var r = 0; r < e.feed.entry[s].link.length; r++)
                    if ("alternate" == e.feed.entry[s].link[r].rel) {
                        t = e.feed.entry[s].link[r].href;
                        break;
                    }
                var l = e.feed.entry[s].title.$t,
                    n = e.feed.entry[s].category[0].term,
                    vv = e.feed.entry[s].author[0].name.$t,
                    m = n.slice(0, 1);
                if (
                    ((i = e.feed.entry[s].published.$t),
                        (c = i.substring(0, 4)),
                        (d = i.substring(5, 7)),
                        (o = i.substring(8, 10)),
                        (f = months[parseInt(d, 10)] + " " + o + ", " + c),
                        (u = e.feed.entry[s].content.$t),
                        (h = $("<div>").html(u)),
                        u.indexOf("http://www.youtube.com/embed/") > -1 || u.indexOf("https://www.youtube.com/embed/") > -1)
                )
                    var g = '<a class="related-img" href="' + t + '" style="background:url(' + e.feed.entry[s].media$thumbnail.url + ') no-repeat center center;background-size: cover"/>';
                else
                    g =
                    u.indexOf("<img") > -1 ?
                    '<a href="' + t + '"><img class="related-img" src="' + h.find("img:first").attr("src") + '" alt="' + l + '"></img></a>' :
                    '<a href="' + t + '"><img class="related-img" src="' + no_image + '" alt="' + l + '"></img></a>';
                a +=
                    '<li><div class="lk__thumb">' +
                    g +
                    '</div><span class="tag ' +
                    m +
                    '"><a class="tag" href="/search/label/' +
                    n +
                    '" title="' +
                    n +
                    '"><svg class="tag-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>' +
                    n +
                    '</a></span><div class="lk__content"><h3 class="lk__title"><a title="' +
                    l +
                    '" href="' +
                    t +
                    '">' +
                    l +
                    '</a></h3><div class="lk__meta"><span class="lk__date"><i class="fa fa-clock-o"></i>' +
                    f +
                    "</span></div></div></li>";
            }
            (a += '</div><div class="clear"/>'), $("#related-posts").html(a), $("#related-posts").before("<h2 class='title'>" + related_title + "</h2>");
        },
        complete: function() {
            0 === $(".related").length && w.parent().hide();
        },
    });
});
if (0 === $(".comment-footer").length) $("#comments").hide();

// ---------------------------------------------
// Load More AJAX
// ---------------------------------------------
$("#blog-pager").hide();
$("a.item_showemore").text(loadmore_txt);
$(".blog-posts.hfeed").prepend("<h3 class='title'>" + recent_title + "</h3>");
var olderLink = $("a.blog-pager-older-link").attr("href");
olderLink && $(".posts_loader").show(),
    $(".more_items").show(),
    $(".more_items a").on("click", function(o) {
        $("a.item_showemore").text(loading_txt),
            $.ajax({
                url: olderLink,
                success: function(o) {
                    var e = $(o).find(".blog-posts");
                    e.children(".status-msg-wrap").remove(),
                        $(".blog-posts").append(e.html()),
                        (olderLink = $(o).find(".blog-pager-older-link").attr("href")) ? $("a.item_showemore").text(loadmore_txt) : ($(".no_items").text(nomore_txt).show(), $(".more_items").hide(), $("a.item_showemore").hide());
                },
                beforeSend: function() {
                    $(".more_items > #items_loader").show();
                },
                complete: function() {
                    $(".more_items > #items_loader").hide(),
                        $(function() {
                            var map = {};
                            $(".post-outer").each(function() {
                                var value = $(this).find(".post-title a").attr("href");
                                if (map[value] == null) {
                                    map[value] = true;
                                } else {
                                    $(this).remove();
                                }
                            });
                        });
                },
            }),
            o.preventDefault();
    });

// ---------------------------------------------
// Sitemap and Contact us Shortcode
// ---------------------------------------------
$(function() {
    var static_page_text = $.trim($(".post-body").text());
    // Sitemap Shortcode
    var text_month = months;
    if (static_page_text === "[sitemap]") {
        var postbody = $(".post-body");
        $.ajax({
            url: "/feeds/posts/default?alt=json-in-script",
            type: "get",
            dataType: "jsonp",
            beforeSend: function() {
                postbody.append('<div class="load_in"><i class="fa fa-spinner fa-spin"></i></div>');
            },
            success: function(e) {
                var t = [];
                for (var n = 0; n < e.feed.category.length; n++) {
                    t.push(e.feed.category[n].term);
                }
                var t = t.join("index.html");
                postbody.html('<div class="timeline-sitemap"></div>');
                $(".post-body .timeline-sitemap").text(t);
                var r = $(".timeline-sitemap").text().split("index.html");
                var i = "";
                for (get = 0; get < r.length; ++get) {
                    i += "<span>" + r[get] + "</span>";
                }
                $(".timeline-sitemap").html(i);
                $(".timeline-sitemap span").each(function() {
                    var e = $(this);
                    var t = $(this).text();
                    $.ajax({
                        url: "/feeds/posts/default/-/" + t + "?alt=json-in-script",
                        type: "get",
                        dataType: "jsonp",
                        success: function(n) {
                            var r = "";
                            var i = '<ul class="timeline-toc">';
                            for (var s = 0; s < n.feed.entry.length; s++) {
                                for (var o = 0; o < n.feed.entry[s].link.length; o++) {
                                    if (n.feed.entry[s].link[o].rel == "alternate") {
                                        r = n.feed.entry[s].link[o].href;
                                        break;
                                    }
                                }
                                var u = n.feed.entry[s].title.$t;
                                var a = n.feed.entry[s].published.$t,
                                    f = a.substring(0, 4),
                                    l = a.substring(5, 7),
                                    c = a.substring(8, 10),
                                    h = '<span class="day">' + c.replace(/^0+/, "") + '</span><span class="month">' + text_month[parseInt(l, 10)] + ' </span><span class="year">' + f + "</span>";
                                i += '<li><span class="timeline-post"><a href="' + r + '">' + u + '</a></span><div class="toc-date"><i class="fa fa-clock-o"></i>' + h + "</div></li>";
                            }
                            i += "</ul>";
                            e.replaceWith('<div class="timeline-toc-wrap"><div class="timeline-cat"><a title="' + t + '" class="' + t.slice(0, 1) + '">' + t + "</a></div>" + i + "</div>");
                        },
                    });
                });
            },
        });
    }
    // Contact Shortcode
    else if (static_page_text === "[contactus]") {
        $.getScript("https://www.blogger.com/static/v1/widgets/2227587253-widgets.js").done(function() {
            var postbody = $(".post-body");
            postbody.html(
                '<div class="contact-form"><div class="contact section" id="contact" style="display: block;"><div class="widget ContactForm" id="ContactForm1"><div class="contact-form-widget"><div class="form"><form name="contact-form"><input class="contact-form-name" id="ContactForm1_contact-form-name" name="name" placeholder="' +
                name_text +
                '" size="30" type="text" value=""/><input class="contact-form-email" id="ContactForm1_contact-form-email" name="email" placeholder="' +
                email_text +
                '" size="30" type="text" value="" /><textarea class="contact-form-email-message" cols="25" id="ContactForm1_contact-form-email-message" name="email-message" placeholder="' +
                mssage_text +
                '" rows="5"></textarea><input class="contact-form-button contact-form-button-submit" id="ContactForm1_contact-form-submit" type="button" value="' +
                send_text +
                '"/><div class="contact-form-error-message" id="ContactForm1_contact-form-error-message"></div><div class="contact-form-success-message" id="ContactForm1_contact-form-success-message"></div></form></div></div></div></div></div>'
            );
            _WidgetManager._Init("");
            _WidgetManager._RegisterWidget(
                "_ContactFormView",
                new _WidgetInfo(
                    "ContactForm1",
                    "contact-sec",
                    null,
                    document.getElementById("ContactForm1"), {
                        contactFormMessageSendingMsg: "Sending...",
                        contactFormMessageSentMsg: "Your message has been successfully sent.",
                        contactFormMessageNotSentMsg: "Failed to send your message. Please try later.",
                        contactFormInvalidEmailMsg: "A valid email address is required.",
                        contactFormEmptyMessageMsg: "Message field cannot be empty.",
                        blogId: blog_id,
                        submitUrl: "https://www.blogger.com/contact-form.do",
                    },
                    "displayModeFull"
                )
            );
        });
    }
});

// ---------------------------------------------
// Sticky Widgets
// ---------------------------------------------
$(function() {
    if (0 !== $(".sticky_aside").length) $('.sticky_aside').sidebarFix({ frame: $('#sidebar-wrapper') });
    if (0 !== $(".second_sticky_aside").length) $('.second_sticky_aside').sidebarFix({ frame: $('#second-sidebar-wrapper') });
    $('.main.section').sidebarFix({ frame: $('.main-wrapper') });
    if (0 !== $(".bar_sticky").length) $('.bar_sticky').sidebarFix({ frame: $('.post-bar') });
});
//]]>

// <!-- Google Analytics -->

window['__wavt'] = 'AOuZoY4LXWtYeiKHz3JvKUQS_21WzuvZdw:1616924131055';
_WidgetManager._Init('//www.blogger.com/rearrange?blogID\x3d3105580687282235843', 'index.html', '3105580687282235843');
_WidgetManager._SetDataContext([{ 'name': 'blog', 'data': { 'blogId': '3105580687282235843', 'title': 'Glass - Responsive News \x26amp; Magazine Blogger Theme', 'url': 'https://glass-demo.blogspot.com/', 'canonicalUrl': 'https://glass-demo.blogspot.com/', 'homepageUrl': 'https://glass-demo.blogspot.com/', 'searchUrl': 'https://glass-demo.blogspot.com/search', 'canonicalHomepageUrl': 'https://glass-demo.blogspot.com/', 'blogspotFaviconUrl': 'https://glass-demo.blogspot.com/favicon.ico', 'bloggerUrl': 'https://www.blogger.com', 'hasCustomDomain': false, 'httpsEnabled': true, 'enabledCommentProfileImages': true, 'gPlusViewType': 'FILTERED_POSTMOD', 'adultContent': false, 'analyticsAccountNumber': '', 'encoding': 'UTF-8', 'locale': 'en', 'localeUnderscoreDelimited': 'en', 'languageDirection': 'ltr', 'isPrivate': false, 'isMobile': false, 'isMobileRequest': false, 'mobileClass': '', 'isPrivateBlog': false, 'isDynamicViewsAvailable': true, 'feedLinks': '\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Glass - Responsive News \x26amp; Magazine Blogger Theme - Atom\x22 href\x3d\x22https://glass-demo.blogspot.com/feeds/posts/default\x22 /\x3e\n\x3clink rel\x3d\x22alternate\x22 type\x3d\x22application/rss+xml\x22 title\x3d\x22Glass - Responsive News \x26amp; Magazine Blogger Theme - RSS\x22 href\x3d\x22https://glass-demo.blogspot.com/feeds/posts/default?alt\x3drss\x22 /\x3e\n\x3clink rel\x3d\x22service.post\x22 type\x3d\x22application/atom+xml\x22 title\x3d\x22Glass - Responsive News \x26amp; Magazine Blogger Theme - Atom\x22 href\x3d\x22https://www.blogger.com/feeds/3105580687282235843/posts/default\x22 /\x3e\n', 'meTag': '', 'adsenseHostId': 'ca-host-pub-1556223355139109', 'adsenseHasAds': false, 'adsenseAutoAds': false, 'view': '', 'dynamicViewsCommentsSrc': '//http://www.blogblog.com/dynamicviews/4224c15c4e7c9321/js/comments.js', 'dynamicViewsScriptSrc': '//www.blogblog.com/dynamicviews/021e8f777704ac9b', 'plusOneApiSrc': 'https://apis.google.com/js/plusone.js', 'disableGComments': true, 'sharing': { 'platforms': [{ 'name': 'Get link', 'key': 'link', 'shareMessage': 'Get link', 'target': '' }, { 'name': 'Facebook', 'key': 'facebook', 'shareMessage': 'Share to Facebook', 'target': 'facebook' }, { 'name': 'BlogThis!', 'key': 'blogThis', 'shareMessage': 'BlogThis!', 'target': 'blog' }, { 'name': 'Twitter', 'key': 'twitter', 'shareMessage': 'Share to Twitter', 'target': 'twitter' }, { 'name': 'Pinterest', 'key': 'pinterest', 'shareMessage': 'Share to Pinterest', 'target': 'pinterest' }, { 'name': 'Email', 'key': 'email', 'shareMessage': 'Email', 'target': 'email' }], 'disableGooglePlus': true, 'googlePlusShareButtonWidth': 300, 'googlePlusBootstrap': '\x3cscript type\x3d\x22text/javascript\x22\x3ewindow.___gcfg \x3d {\x27lang\x27: \x27en\x27};\x3c/script\x3e' }, 'hasCustomJumpLinkMessage': false, 'jumpLinkMessage': 'Read more', 'pageType': 'index', 'pageName': '', 'pageTitle': 'Glass - Responsive News \x26amp; Magazine Blogger Theme' } }, { 'name': 'features', 'data': { 'sharing_get_link_dialog': 'true', 'sharing_native': 'false' } }, { 'name': 'messages', 'data': { 'edit': 'Edit', 'linkCopiedToClipboard': 'Link copied to clipboard!', 'ok': 'Ok', 'postLink': 'Post Link' } }, { 'name': 'template', 'data': { 'name': 'custom', 'localizedName': 'Custom', 'isResponsive': true, 'isAlternateRendering': false, 'isCustom': true } }, { 'name': 'view', 'data': { 'classic': { 'name': 'classic', 'url': '?view\x3dclassic' }, 'flipcard': { 'name': 'flipcard', 'url': '?view\x3dflipcard' }, 'magazine': { 'name': 'magazine', 'url': '?view\x3dmagazine' }, 'mosaic': { 'name': 'mosaic', 'url': '?view\x3dmosaic' }, 'sidebar': { 'name': 'sidebar', 'url': '?view\x3dsidebar' }, 'snapshot': { 'name': 'snapshot', 'url': '?view\x3dsnapshot' }, 'timeslide': { 'name': 'timeslide', 'url': '?view\x3dtimeslide' }, 'isMobile': false, 'title': 'Glass - Responsive News \x26 Magazine Blogger Theme', 'description': '', 'url': 'https://glass-demo.blogspot.com/', 'type': 'feed', 'isSingleItem': false, 'isMultipleItems': true, 'isError': false, 'isPage': false, 'isPost': false, 'isHomepage': true, 'isArchive': false, 'isLabelSearch': false } }, { 'name': 'widgets', 'data': [{ 'title': 'Default Image', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML193' }, { 'title': 'Months format', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML183' }, { 'title': 'Show More Text', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML173' }, { 'title': 'Load More', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML213' }, { 'title': 'Related Posts Widget', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML163' }, { 'title': 'Article Navigation', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML143' }, { 'title': 'Contact Us Form', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML203' }, { 'title': '404', 'type': 'HTML', 'sectionId': 'options', 'id': 'HTML205' }, { 'title': 'Menu', 'type': 'LinkList', 'sectionId': 'poppanel', 'id': 'LinkList20' }, { 'title': 'Fashion', 'type': 'HTML', 'sectionId': 'poppanel', 'id': 'HTML10' }, { 'title': 'CATEGORIES', 'type': 'Label', 'sectionId': 'poppanel', 'id': 'Label3' }, { 'title': 'Breaking News', 'type': 'HTML', 'sectionId': 'newsticker', 'id': 'HTML11' }, { 'title': 'Glass - Responsive News \x26amp; Magazine Blogger Theme (Header)', 'type': 'Header', 'sectionId': 'logo', 'id': 'Header1' }, { 'title': '', 'type': 'LinkList', 'sectionId': 'main-menu', 'id': 'LinkList100' }, { 'title': '', 'type': 'HTML', 'sectionId': 'main_blockPosts', 'id': 'HTML4' }, { 'title': '', 'type': 'HTML', 'sectionId': 'main_blockPosts', 'id': 'HTML12' }, { 'title': '', 'type': 'Image', 'sectionId': 'home-ad', 'id': 'Image1' }, { 'title': 'Comments', 'type': 'HTML', 'sectionId': 'second-sidebar', 'id': 'HTML9' }, { 'title': 'CATEGORIES', 'type': 'Label', 'sectionId': 'second-sidebar', 'id': 'Label2' }, { 'title': 'Follow US [socm2]', 'type': 'LinkList', 'sectionId': 'second-sidebar', 'id': 'LinkList1' }, { 'title': 'Pages', 'type': 'PageList', 'sectionId': 'second-sidebar', 'id': 'PageList1' }, { 'title': '', 'type': 'HTML', 'sectionId': 'aMain-posts-area', 'id': 'HTML3' }, { 'title': 'recent posts', 'type': 'HTML', 'sectionId': 'aMain-posts-area', 'id': 'HTML2' }, { 'title': 'Blog Posts', 'type': 'Blog', 'sectionId': 'main', 'id': 'Blog1', 'posts': [{ 'id': '4543944696491774066', 'title': 'For good results must be make good plan', 'featuredImage': 'https://1.bp.blogspot.com/-mKlXHVmnWtI/YDUPl5H-soI/AAAAAAAACr4/56XHBrEzrdQy1qTlD1hLeAT0L1cKvw2cACLcBGAsYHQ/s1600/ify12%2B%25281%2529.jpg', 'showInlineAds': false }, { 'id': '4452480170779824046', 'title': 'How lovely yellow is! It stands for the sun', 'featuredImage': 'https://1.bp.blogspot.com/-QlMZjOurEaQ/YAXrrKsze9I/AAAAAAAACcM/glewl_ecxyA2G0Byz25HxJPJ9qeCyLvEgCPcBGAsYHg/w640-h422/health_4.jpg', 'showInlineAds': false }, { 'id': '5769068922094877494', 'title': 'The time is right for electric cars', 'featuredImage': 'https://1.bp.blogspot.com/-57rZfgF3u0g/YDUOZjnFHkI/AAAAAAAACrw/jEtIV19F9AgicD6ZUnpPsiPT2o-FgVcJgCLcBGAsYHQ/s16000/daniel-korpai-_RYbP9O-vTU-unsplash-1920x0.jpg', 'showInlineAds': false }, { 'id': '8901554006806321777', 'title': 'Fast food is popular because it\x26#39;s convenient', 'featuredImage': 'https://1.bp.blogspot.com/-9-esByDytgk/YDOTl2rDDCI/AAAAAAAACqk/1kfVZ1v28tMrpzb0B7LvnKi9KavHZST9QCLcBGAsYHQ/w640-h422/food_4.jpg', 'showInlineAds': false }, { 'id': '2492857688233558413', 'title': 'Well done is better than well said', 'featuredImage': 'https://1.bp.blogspot.com/-P1ydrU954zI/YAXs2pf6MVI/AAAAAAAACck/ajQRvdJ13CoGCPWYejP7lLKHTvM0eRy9wCPcBGAsYHg/w640-h422/health_5.jpg', 'showInlineAds': false }, { 'id': '2242805514203550830', 'title': 'Benefits of jogging to stay healthy', 'showInlineAds': false }, { 'id': '7040332617913384795', 'title': 'The incredible thing about Virtual Reality', 'featuredImage': 'https://1.bp.blogspot.com/-DZAbw-9UAis/YAqmdyDsoRI/AAAAAAAACeY/NKJh2m7OxOk1kGF4t9e_8lf85NDWAwyrgCPcBGAsYHg/w640-h422/tech_3.jpg', 'showInlineAds': false }], 'headerByline': { 'regionName': 'header1', 'items': [{ 'name': 'author', 'label': 'By' }, { 'name': 'timestamp', 'label': 'on' }] }, 'footerBylines': [{ 'regionName': 'footer1', 'items': [{ 'name': 'comments', 'label': 'Comments' }] }, { 'regionName': 'footer2', 'items': [{ 'name': 'labels', 'label': 'Tags' }] }], 'allBylineItems': [{ 'name': 'author', 'label': 'By' }, { 'name': 'timestamp', 'label': 'on' }, { 'name': 'comments', 'label': 'Comments' }, { 'name': 'labels', 'label': 'Tags' }] }, { 'title': 'video', 'type': 'HTML', 'sectionId': 'bMain-posts-area', 'id': 'HTML6' }, { 'title': 'random posts', 'type': 'HTML', 'sectionId': 'bMain-posts-area', 'id': 'HTML1' }, { 'title': 'Food', 'type': 'HTML', 'sectionId': 'sidebar-posts-area', 'id': 'HTML5' }, { 'title': 'Contact Form', 'type': 'ContactForm', 'sectionId': 'sidebar', 'id': 'ContactForm1' }, { 'title': 'Follow US [socm1]', 'type': 'LinkList', 'sectionId': 'sidebar', 'id': 'LinkList19' }, { 'title': 'FOLLOW BY EMAIL', 'type': 'FollowByEmail', 'sectionId': 'sidebar', 'id': 'FollowByEmail1' }, { 'title': 'Populare Posts', 'type': 'PopularPosts', 'sectionId': 'sidebar', 'id': 'PopularPosts1', 'posts': [{ 'title': 'For good results must be make good plan', 'id': 4543944696491774066 }, { 'title': 'How lovely yellow is! It stands for the sun', 'id': 4452480170779824046 }, { 'title': 'The time is right for electric cars', 'id': 5769068922094877494 }, { 'title': 'Fast food is popular because it\x26#39;s convenient', 'id': 8901554006806321777 }, { 'title': 'Well done is better than well said', 'id': 2492857688233558413 }, { 'title': 'Benefits of jogging to stay healthy', 'id': 2242805514203550830 }] }, { 'title': 'CATEGORIES', 'type': 'Label', 'sectionId': 'sidebar', 'id': 'Label1' }, { 'title': 'recent posts', 'type': 'HTML', 'sectionId': 'footer-posts', 'id': 'HTML7' }, { 'title': '', 'type': 'HTML', 'sectionId': 'footer-copyrights', 'id': 'HTML8' }, { 'title': '', 'type': 'HTML', 'sectionId': 'Postwidegt1', 'id': 'HTML997' }, { 'title': '', 'type': 'LinkList', 'sectionId': 'Postwidegt2', 'id': 'LinkList2' }] }]);
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML193', 'options', document.getElementById('HTML193'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML183', 'options', document.getElementById('HTML183'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML173', 'options', document.getElementById('HTML173'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML213', 'options', document.getElementById('HTML213'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML163', 'options', document.getElementById('HTML163'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML143', 'options', document.getElementById('HTML143'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML203', 'options', document.getElementById('HTML203'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML205', 'options', document.getElementById('HTML205'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList20', 'poppanel', document.getElementById('LinkList20'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML10', 'poppanel', document.getElementById('HTML10'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LabelView', new _WidgetInfo('Label3', 'poppanel', document.getElementById('Label3'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML11', 'newsticker', document.getElementById('HTML11'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HeaderView', new _WidgetInfo('Header1', 'logo', document.getElementById('Header1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList100', 'main-menu', document.getElementById('LinkList100'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML4', 'main_blockPosts', document.getElementById('HTML4'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML12', 'main_blockPosts', document.getElementById('HTML12'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_ImageView', new _WidgetInfo('Image1', 'home-ad', document.getElementById('Image1'), { 'resize': false }, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML9', 'second-sidebar', document.getElementById('HTML9'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LabelView', new _WidgetInfo('Label2', 'second-sidebar', document.getElementById('Label2'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList1', 'second-sidebar', document.getElementById('LinkList1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_PageListView', new _WidgetInfo('PageList1', 'second-sidebar', document.getElementById('PageList1'), { 'title': 'Pages', 'links': [{ 'isCurrentPage': false, 'href': 'https://glass-demo.blogspot.com/p/contact-us.html', 'id': '4370028855841919802', 'title': 'Contact us' }, { 'isCurrentPage': false, 'href': 'https://glass-demo.blogspot.com/p/short-codes.html', 'id': '3586064269671318200', 'title': 'Short Codes' }, { 'isCurrentPage': false, 'href': 'https://glass-demo.blogspot.com/p/tipography.html', 'id': '5999457716822400858', 'title': 'Tipography' }], 'mobile': false }, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML3', 'aMain-posts-area', document.getElementById('HTML3'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML2', 'aMain-posts-area', document.getElementById('HTML2'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_BlogView', new _WidgetInfo('Blog1', 'main', document.getElementById('Blog1'), { 'cmtInteractionsEnabled': false, 'lightboxEnabled': true, 'lightboxModuleUrl': 'https://www.blogger.com/static/v1/jsbin/1933366796-lbx.js', 'lightboxCssUrl': 'https://www.blogger.com/static/v1/v-css/1050234869-lightbox_bundle.css' }, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML6', 'bMain-posts-area', document.getElementById('HTML6'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML1', 'bMain-posts-area', document.getElementById('HTML1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML5', 'sidebar-posts-area', document.getElementById('HTML5'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_ContactFormView', new _WidgetInfo('ContactForm1', 'sidebar', document.getElementById('ContactForm1'), { 'contactFormMessageSendingMsg': 'Sending...', 'contactFormMessageSentMsg': 'Your message has been sent.', 'contactFormMessageNotSentMsg': 'Message could not be sent. Please try again later.', 'contactFormInvalidEmailMsg': 'A valid email address is required.', 'contactFormEmptyMessageMsg': 'Message field cannot be empty.', 'title': 'Contact Form', 'blogId': '3105580687282235843', 'contactFormNameMsg': 'Name', 'contactFormEmailMsg': 'Email', 'contactFormMessageMsg': 'Message', 'contactFormSendMsg': 'Send', 'submitUrl': 'https://www.blogger.com/contact-form.do' }, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList19', 'sidebar', document.getElementById('LinkList19'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_FollowByEmailView', new _WidgetInfo('FollowByEmail1', 'sidebar', document.getElementById('FollowByEmail1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_PopularPostsView', new _WidgetInfo('PopularPosts1', 'sidebar', document.getElementById('PopularPosts1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LabelView', new _WidgetInfo('Label1', 'sidebar', document.getElementById('Label1'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML7', 'footer-posts', document.getElementById('HTML7'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML8', 'footer-copyrights', document.getElementById('HTML8'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_HTMLView', new _WidgetInfo('HTML997', 'Postwidegt1', document.getElementById('HTML997'), {}, 'displayModeFull'));
_WidgetManager._RegisterWidget('_LinkListView', new _WidgetInfo('LinkList2', 'Postwidegt2', document.getElementById('LinkList2'), {}, 'displayModeFull'));