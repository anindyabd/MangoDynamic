$(document).ready(function() {
  Morris.Line({
    element: 'click_chart',
    data: $('#click_chart').data('clicks'),  
    xkey: 'week',
    ykeys: ['weibo_clicks'],
    labels: ['Weibo Clicks'],
    parseTime: false
  });
  Morris.Line({
    element: 'click_chart2',
    data: $('#click_chart').data('clicks'),  
    xkey: 'week',
    ykeys: ['weibo_clicks'],
    labels: ['Weibo Clicks'],
    parseTime: false
  });
  Morris.Line({
    element: 'click_chart3',
    data: $('#click_chart').data('clicks'),  
    xkey: 'week',
    ykeys: ['weibo_clicks'],
    labels: ['Weibo Clicks'],
    parseTime: false
  });
});

