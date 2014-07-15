$(document).ready(function() {
  Morris.Line({
    element: 'click_chart',
    data: $('#click_chart').data('clicks'),  
    xkey: 'week',
    ykeys: ['weibo_clicks', 'weibo_followers', 'baidu_clicks'],
    labels: ['Weibo Clicks', 'Weibo Followers', "Baidu Clicks"],
    parseTime: false
  });
  Morris.Line({
    element: 'click_chart2',
    data: $('#click_chart2').data('clicks'),  
    xkey: 'week',
    ykeys: ['email'],
    labels: ['Email Signups'],
    parseTime: false
  });
  Morris.Donut({
    element: 'click_chart3',
    data: [
      {label: "Clicks Used", value: 40},
      {label: "Clicks Purchased", value: 60}
    ],
    formatter: function (y, data) { return y + '%' }
  });

});

