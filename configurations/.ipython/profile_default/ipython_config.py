c = get_config()

c.TerminalIPythonApp.display_banner = True
c.InteractiveShellApp.log_level = 20
c.InteractiveShellApp.extensions = [
    'autoreload'
]
c.InteractiveShellApp.exec_lines = [
    '%autoreload 2'
]
c.InteractiveShellApp.exec_lines.append(
    'print("Warning: disable autoreload in ipython_config.py to improve performance.")'
)

c.InteractiveShell.confirm_exit = False
