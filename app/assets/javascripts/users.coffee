# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#user_department_id').parent().hide()
  departments = $('#user_department_id').html()
  $('#user_adscription_id').change ->
    adscription = $('#user_adscription_id :selected').text()
    escaped_adscription = adscription.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(departments).filter("optgroup[label='#{escaped_adscription}']").html()
    if options
      $('#user_department_id').html(options)
      $('#user_department_id').parent().show()
    else
      $('#user_department_id').empty()
      $('#user_department_id').parent().hide()