function genAgenda() {
    var n = 9
      , t = 21
      , i = [{
        n: "Lundi",
        t: [{
            c: 1,
            n: "Conduite",
            b: 8,
            e: 20
        }]
    }, {
        n: "Mardi",
        t: [{
            c: 1,
            n: "Conduite",
            b: 8,
            e: 18
        }, {
            n: "Code",
            b: 18,
            e: 19.5
        }]
    }, {
        n: "Mercredi",
        t: [{
            c: 1,
            n: "Conduite",
            b: 8,
            e: 18
        }, {
            n: "Code",
            b: 18,
            e: 19.5
        }]
    }, {
        n: "Jeudi",
        t: [{
            c: 1,
            n: "Conduite",
            b: 8,
            e: 20
        }]
    }, {
        n: "Vendredi",
        t: [{
            c: 1,
            n: "Conduite",
            b: 8,
            e: 18.5
        }, {
            n: "Code",
            b: 18.5,
            e: 20.5
        }]
    }, {
        n: "Samedi",
        t: [{
            c: 1,
            n: "Conduite",
            b: 8,
            e: 14
        }, {
            n: "Code",
            b: 14,
            e: 15
        }]
    }]
      , e = []
      , s = t - n + 1
      , o = function(n) {
        var t = Math.floor(n)
          , i = Math.round(n % 1 * 60);
        return t + "H" + (0 == i ? "" : i)
    }
      , a = function(n) {
        return n.n + " : " + o(n.b) + " - " + o(n.e)
    }
    ;
    e.push("<div>"),
    e.push('<div class="agenda-header">');
    for (var h = n; t >= h; h++)
        e.push('<div style="left:' + (h - n) / s * 100 + "%;width:" + 1 / s * 100 + '%;">' + h + "</div>");
    e.push("</div>");
    for (var r in i) {
        var c = i[r];
        e.push('<div class="agenda-day">'),
        e.push('<div class="agenda-day-title">' + c.n + "</div>");
        for (var l in c.t) {
            var d = c.t[l];
            e.push('<div class="task' + (d.c ? "" : " task-special") + '" style="left:' + (d.b - n) / s * 100 + "%;width:" + (d.e - d.b) / s * 100 + '%;" title="' + a(d) + '">' + d.n + "</div>")
        }
        e.push("</div>")
    }
    return e.push("</div>"),
    e.join(" ")
}