#= require active_admin/base
#= require activeadmin/froala_editor/froala_editor.pkgd.min
#= require activeadmin/froala_editor_input
#= require_tree ./chosen
$ ->
  $('.chosen-select').chosen({ width: '80%', allow_single_deselect: true })
