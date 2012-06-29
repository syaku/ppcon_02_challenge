myAlert = (before, message) ->
     $(before).after($("<div>").attr("class", "alert alert-error fade in").text(message).append($("<button>").attr("class", "close").attr("data-dismiss", "alert").html("&times;")))

$ ->
  # 問題1
  $("#get_name").click ->
    $("#subject01_result").text($("#yamada_name").html())

  # 問題2
  $("#add_sakurako").click ->
    if $("#member_list > #sakurako").size() > 0
      myAlert $("#member_list"), "櫻子さんは追加済みです。"
    else
      $("#member_list").append($("<li>").attr("id", "sakurako").text("櫻子"))

  $("#add_himawari").click ->
    if $("#member_list > #himawari").size() > 0
      myAlert $("#member_list"), "向日葵さんは追加済みです。"
    else
      $("#member_list").append($("<li>").attr("id", "himawari").text("向日葵"))

  # 問題3
  $("#remove_akari").click ->
    if $("#member_list_remove > #akari").size() == 0
      myAlert $("#member_list_remove"), "あかりさんは削除済みです。"
    else
      $("#member_list_remove > #akari").remove()

  # 問題4
  $("#change_visible_momo").click ->
    $("#stealth_momo").toggle()

  # 問題5
  $("#change_header_html").click ->
    $("h2").each ->  
      $(this).text("【#{$(this).text()}】")
