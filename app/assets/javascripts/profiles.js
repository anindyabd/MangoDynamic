$(document).ready(function() {
  Morris.Line({
    element: 'click_chart',
    data: $('#click_chart').data('clicks'),  
    xkey: 'week',
    ykeys: ['weibo_clicks', 'baidu_clicks'],
    labels: ['Weibo Clicks', "Baidu Clicks"],
    parseTime: false,
    hideHover: 'never'
  });

  Morris.Line({
    element: 'click_chart2',
    data: $('#click_chart2').data('clicks'),  
    xkey: 'week',
    ykeys: ['email'],
    labels: ['Email Signups'],
    parseTime: false,
    hideHover: 'never'
  });

  Morris.Line({
    element: 'click_chart3',
    data: $('#click_chart3').data('clicks'),
    xkey: 'week',
    ykeys: ['weibo_followers'],
    labels: ['Weibo Followers'],
    parseTime: false,
    hideHover: 'never'
  });

  Morris.Donut({
    element: 'pie_chart',
    data: [
      {label: "Clicks Used", value: 40},
      {label: "Clicks Purchased", value: 60}
    ],
    formatter: function (y, data) { return y + '%' }
  });

});

