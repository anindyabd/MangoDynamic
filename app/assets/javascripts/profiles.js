$(document).ready(function() {
  Morris.Line({
    element: 'click_chart',
   data: $('#click_chart').data('clicks'),  
  xkey: 'week',
  ykeys: 'weibo_clicks',
  labels: ['click throughs']
  });
});