# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# atom.commands.add('atom-text-editor', 'custom:toggle-line-selection', () => {
#   const editor = atom.workspace.getActiveTextEditor()
#   editor.moveToFirstCharacterOfLine()
# })

atom.commands.add 'atom-workspace', 'dot-atom:demo', ->
  console.log "Hello from dot-atom:demo"


atom.commands.add 'atom-workspace', 'user:insert-date', ->
     editor = atom.workspace.getActiveTextEditor()
     return editor.insertText(new Date().toLocaleString())

atom.commands.add 'atom-workspace', 'user:toggle-line-selection', ->
  editor = atom.workspace.getActiveTextEditor()
  editor.moveToFirstCharacterOfLine()
  atom.commands.dispatch(atom.views.getView(editor), 'selection-mode:toggle-without-deselecting')
  editor.moveDown()
  #console.log "command activated"
