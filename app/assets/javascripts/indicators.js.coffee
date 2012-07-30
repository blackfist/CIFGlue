# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# jQuery ->
#   $('#indicatorTable').dataTable({
#     "sPaginationType": "bootstrap"
#     "iDisplayLength": 50
#     "aoColumnDefs": [ { "bSortable":false, "aTargets":[4]} ]
#     "bProcessing": "true"
#     "bServerSide": "true"
#     "sAjaxSource":"$('#indicatorTable').data('source')"
#    } );

javascript:
  datatype = "#{@datatype}";
  
jQuery ->
  $('#indicatorTable').dataTable
    sPaginationType: "bootstrap"
    iDisplayLength: 50
    aoColumnDefs: [{ "bSortable":false, "aTargets":[4]}] 
    bProcessing: true
    bServerSide: true
    sAjaxSource:$('#indicatorTable').data('source')
    fnServerParams:(aoData) ->
      aoData.push
        name: "type"
        value: DataType 
