<!DOCTYPE html>
<html><head>
<meta charset="utf-8">
<link href="../packages/core/main.css" rel="stylesheet">
<link href="../packages/daygrid/main.css" rel="stylesheet">
<link href="../packages/timegrid/main.css" rel="stylesheet">
<script src="../packages/core/main.js"></script>
<script src="../packages/interaction/main.js"></script>
<script src="../packages/daygrid/main.js"></script>
<script src="../packages/timegrid/main.js"></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      defaultDate: '2019-08-12',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2019-08-01'
        },
        {
          title: 'Long Event',
          start: '2019-08-07',
          end: '2019-08-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2019-08-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2019-08-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2019-08-11',
          end: '2019-08-13'
        },
        {
          title: 'Meeting',
          start: '2019-08-12T10:30:00',
          end: '2019-08-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2019-08-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2019-08-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2019-08-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2019-08-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2019-08-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2019-08-28'
        }
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body class="">

  <div id="calendar" class="fc fc-ltr fc-unthemed" style=""><div class="fc-toolbar fc-header-toolbar"><div class="fc-left"><div class="fc-button-group"><button type="button" class="fc-prev-button fc-button fc-button-primary" aria-label="prev"><span class="fc-icon fc-icon-chevron-left"></span></button><button type="button" class="fc-next-button fc-button fc-button-primary" aria-label="next"><span class="fc-icon fc-icon-chevron-right"></span></button></div><button type="button" class="fc-today-button fc-button fc-button-primary">today</button></div><div class="fc-center"><h2>August 2019</h2></div><div class="fc-right"><div class="fc-button-group"><button type="button" class="fc-dayGridMonth-button fc-button fc-button-primary fc-button-active">month</button><button type="button" class="fc-timeGridWeek-button fc-button fc-button-primary">week</button><button type="button" class="fc-timeGridDay-button fc-button fc-button-primary">day</button></div></div></div><div class="fc-view-container"><div class="fc-view fc-dayGridMonth-view fc-dayGrid-view" style=""><table class=""><thead class="fc-head"><tr><td class="fc-head-container fc-widget-header"><div class="fc-row fc-widget-header"><table class=""><thead><tr><th class="fc-day-header fc-widget-header fc-sun"><span>Sun</span></th><th class="fc-day-header fc-widget-header fc-mon"><span>Mon</span></th><th class="fc-day-header fc-widget-header fc-tue"><span>Tue</span></th><th class="fc-day-header fc-widget-header fc-wed"><span>Wed</span></th><th class="fc-day-header fc-widget-header fc-thu"><span>Thu</span></th><th class="fc-day-header fc-widget-header fc-fri"><span>Fri</span></th><th class="fc-day-header fc-widget-header fc-sat"><span>Sat</span></th></tr></thead></table></div></td></tr></thead><tbody class="fc-body"><tr><td class="fc-widget-content"><div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 648px;"><div class="fc-day-grid"><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 108px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2019-07-28"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2019-07-29"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2019-07-30"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-past" data-date="2019-07-31"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-08-01"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-08-02"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-08-03"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2019-07-28"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-07-28&quot;,&quot;type&quot;:&quot;day&quot;}">28</a></td><td class="fc-day-top fc-mon fc-other-month fc-past" data-date="2019-07-29"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-07-29&quot;,&quot;type&quot;:&quot;day&quot;}">29</a></td><td class="fc-day-top fc-tue fc-other-month fc-past" data-date="2019-07-30"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-07-30&quot;,&quot;type&quot;:&quot;day&quot;}">30</a></td><td class="fc-day-top fc-wed fc-other-month fc-past" data-date="2019-07-31"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-07-31&quot;,&quot;type&quot;:&quot;day&quot;}">31</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-08-01"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-01&quot;,&quot;type&quot;:&quot;day&quot;}">1</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-08-02"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-02&quot;,&quot;type&quot;:&quot;day&quot;}">2</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-08-03"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-03&quot;,&quot;type&quot;:&quot;day&quot;}">3</a></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable"><div class="fc-content"> <span class="fc-title">All Day Event</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 108px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-08-04"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-08-05"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-08-06"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-08-07"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-08-08"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-08-09"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-08-10"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-08-04"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-04&quot;,&quot;type&quot;:&quot;day&quot;}">4</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-08-05"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-05&quot;,&quot;type&quot;:&quot;day&quot;}">5</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-08-06"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-06&quot;,&quot;type&quot;:&quot;day&quot;}">6</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-08-07"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-07&quot;,&quot;type&quot;:&quot;day&quot;}">7</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-08-08"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-08&quot;,&quot;type&quot;:&quot;day&quot;}">8</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-08-09"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-09&quot;,&quot;type&quot;:&quot;day&quot;}">9</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-08-10"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-10&quot;,&quot;type&quot;:&quot;day&quot;}">10</a></td></tr></thead><tbody><tr><td rowspan="2"></td><td rowspan="2"></td><td class="fc-event-container" rowspan="2"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable"><div class="fc-content"> <span class="fc-title">ㄱㄱㄱㄱㄱ</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td class="fc-event-container" colspan="3"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable"><div class="fc-content"> <span class="fc-title">Long Event</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td rowspan="2"></td></tr><tr><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">4p</span> <span class="fc-title">Repeating Event</span></div></a></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 108px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-08-11"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-08-12"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-08-13"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-08-14"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-08-15"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-08-16"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-08-17"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-08-11"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-11&quot;,&quot;type&quot;:&quot;day&quot;}">11</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-08-12"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-12&quot;,&quot;type&quot;:&quot;day&quot;}">12</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-08-13"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-13&quot;,&quot;type&quot;:&quot;day&quot;}">13</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-08-14"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-14&quot;,&quot;type&quot;:&quot;day&quot;}">14</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-08-15"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-15&quot;,&quot;type&quot;:&quot;day&quot;}">15</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-08-16"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-16&quot;,&quot;type&quot;:&quot;day&quot;}">16</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-08-17"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-17&quot;,&quot;type&quot;:&quot;day&quot;}">17</a></td></tr></thead><tbody><tr><td class="fc-event-container" colspan="2"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable"><div class="fc-content"> <span class="fc-title">Conference</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td class="fc-event-container" rowspan="6"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">7a</span> <span class="fc-title">Birthday Party</span></div></a></td><td rowspan="6"></td><td rowspan="6"></td><td class="fc-event-container" rowspan="6"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">4p</span> <span class="fc-title">Repeating Event</span></div></a></td><td rowspan="6"></td></tr><tr><td rowspan="5"></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">10:30a</span> <span class="fc-title">Meeting</span></div></a></td></tr><tr><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">12p</span> <span class="fc-title">Lunch</span></div></a></td></tr><tr><td class="fc-event-container fc-limited"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">2:30p</span> <span class="fc-title">Meeting</span></div></a></td><td class="fc-more-cell" rowspan="1"><div><a class="fc-more">+3 more</a></div></td></tr><tr class="fc-limited"><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">5:30p</span> <span class="fc-title">Happy Hour</span></div></a></td></tr><tr class="fc-limited"><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">8p</span> <span class="fc-title">Dinner</span></div></a></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 108px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-08-18"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-08-19"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-08-20"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-08-21"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-08-22"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-08-23"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-08-24"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-08-18"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-18&quot;,&quot;type&quot;:&quot;day&quot;}">18</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-08-19"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-19&quot;,&quot;type&quot;:&quot;day&quot;}">19</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-08-20"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-20&quot;,&quot;type&quot;:&quot;day&quot;}">20</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-08-21"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-21&quot;,&quot;type&quot;:&quot;day&quot;}">21</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-08-22"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-22&quot;,&quot;type&quot;:&quot;day&quot;}">22</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-08-23"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-23&quot;,&quot;type&quot;:&quot;day&quot;}">23</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-08-24"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-24&quot;,&quot;type&quot;:&quot;day&quot;}">24</a></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 108px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2019-08-25"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2019-08-26"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2019-08-27"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2019-08-28"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2019-08-29"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2019-08-30"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2019-08-31"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-past" data-date="2019-08-25"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-25&quot;,&quot;type&quot;:&quot;day&quot;}">25</a></td><td class="fc-day-top fc-mon fc-past" data-date="2019-08-26"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-26&quot;,&quot;type&quot;:&quot;day&quot;}">26</a></td><td class="fc-day-top fc-tue fc-past" data-date="2019-08-27"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-27&quot;,&quot;type&quot;:&quot;day&quot;}">27</a></td><td class="fc-day-top fc-wed fc-past" data-date="2019-08-28"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-28&quot;,&quot;type&quot;:&quot;day&quot;}">28</a></td><td class="fc-day-top fc-thu fc-past" data-date="2019-08-29"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-29&quot;,&quot;type&quot;:&quot;day&quot;}">29</a></td><td class="fc-day-top fc-fri fc-past" data-date="2019-08-30"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-30&quot;,&quot;type&quot;:&quot;day&quot;}">30</a></td><td class="fc-day-top fc-sat fc-past" data-date="2019-08-31"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-08-31&quot;,&quot;type&quot;:&quot;day&quot;}">31</a></td></tr></thead><tbody><tr><td></td><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable" href="http://google.com/"><div class="fc-content"> <span class="fc-title">Click for Google</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 108px;"><div class="fc-bg"><table class=""><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2019-09-01"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2019-09-02"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2019-09-03"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-past" data-date="2019-09-04"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-past" data-date="2019-09-05"></td><td class="fc-day fc-widget-content fc-fri fc-other-month fc-past" data-date="2019-09-06"></td><td class="fc-day fc-widget-content fc-sat fc-other-month fc-past" data-date="2019-09-07"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-top fc-sun fc-other-month fc-past" data-date="2019-09-01"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-01&quot;,&quot;type&quot;:&quot;day&quot;}">1</a></td><td class="fc-day-top fc-mon fc-other-month fc-past" data-date="2019-09-02"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-02&quot;,&quot;type&quot;:&quot;day&quot;}">2</a></td><td class="fc-day-top fc-tue fc-other-month fc-past" data-date="2019-09-03"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-03&quot;,&quot;type&quot;:&quot;day&quot;}">3</a></td><td class="fc-day-top fc-wed fc-other-month fc-past" data-date="2019-09-04"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-04&quot;,&quot;type&quot;:&quot;day&quot;}">4</a></td><td class="fc-day-top fc-thu fc-other-month fc-past" data-date="2019-09-05"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-05&quot;,&quot;type&quot;:&quot;day&quot;}">5</a></td><td class="fc-day-top fc-fri fc-other-month fc-past" data-date="2019-09-06"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-06&quot;,&quot;type&quot;:&quot;day&quot;}">6</a></td><td class="fc-day-top fc-sat fc-other-month fc-past" data-date="2019-09-07"><a class="fc-day-number" data-goto="{&quot;date&quot;:&quot;2019-09-07&quot;,&quot;type&quot;:&quot;day&quot;}">7</a></td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div></div></div></td></tr></tbody></table></div></div></div>



</body></html>