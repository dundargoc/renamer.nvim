local plugin_name = 'renamer'
local cr_keyword = '<cr>'

local strings = {
    plugin_name = plugin_name,
    cword_keyword = '<cword>',
    cr_keyword = cr_keyword,
    esc_keyword = '<esc>',
    insert_mode_short_string = 'i',
    submit_key_press_command = '<cmd>lua require("' .. plugin_name .. '").on_submit(%s)' .. cr_keyword,
    cancel_key_press_command = '<cmd>lua require("' .. plugin_name .. '").on_close(%s)' .. cr_keyword,
    exec_keymap_action_command_template = '<cmd>lua require("renamer.mappings").exec_keymap_action("%s")<cr>',
    startinsert_command = 'startinsert',
    stopinsert_command = 'stopinsert',
    buf_delete_command_template = 'silent! bdelete! %s',
    win_opt_wrap = 'wrap',
    win_opt_winblend = 'winblend',
    win_opt_sidescrolloff = 'sidescrolloff',
    buf_opt_buflisted = 'buflisted',
    autocmd_buf_leave_template = 'autocmd BufLeave,WinLeave <buffer> ++nested ++once :silent lua require("renamer").on_close(%s)',
    augroup_start = 'augroup RenamerInsert',
    augroup_reset = 'au!',
    augroup_end = 'augroup end',
    input_prompt_template = 'Rename "%s" to: ',
    health_report_start = 'health#report_start',
    health_report_ok = 'health#report_ok',
    health_report_warn = 'health#report_warn',
    health_report_error = 'health#report_error',
    health_report_info = 'health#report_info',
    plenary_popup_cursor = 'cursor',
    plenary_popup_cursor_plus = 'cursor+',
    plenary_popup_cursor_minus = 'cursor-',
    highlight_title = 'RenamerTitle',
    highlight_normal = 'RenamerNormal',
    highlight_border = 'RenamerBorder',
    lsp_req_rename = 'textDocument/rename',
    file_uri_schema = 'file://',
    invalid_cursor_position_err = 'Cannot find word start using cursor position. Please ensure cursor is placed on a word.',
    finished_setup = 'Finished setup.',
    not_enough_space_err = 'Window does not provide enough space for the popup to be drawn.',
    created_popup_template = 'Created "plenary" popup, with options: %s',
    finished_popup_setup = 'Finished setting up the popup.',
    finished_popup_styling = 'Finished styling the popup.',
    submitted_word_template = 'Submitted word: "%s".',
    rename_to_empty_string_err_template = 'Cannot rename "%s" to an empty string.',
    deleted_window_template = 'Deleted window: "%s".',
    deleted_window_border_template = 'Deleted window: "%s" (border).',
    nothing_to_rename_err = 'Nothing to rename.',
    nil_lsp_response_err = 'LSP response is nil.',
    failed_to_close_window_err_template = 'Failed to close window: rename_prompt_win/%s.',
    checking_required_plugins = 'Checking required plugins...',
    plugin_installed_template = '"%s" installed.',
    plugin_not_found_template = '"%s" not found.',
    found_required_plugins = 'Found all required plugins.',
    missing_required_plugins_err = 'Missing required plugins.',
    checking_setup_called = 'Chechking whether setup was made...',
    setup_not_called_err = '"renamer.setup()" not called. Please make sure setup is done before using the plugin.',
    invalid_type_err_template = 'Invalid type for "%s". Expected "%s", but found "%s".',
    no_lsp_client_found_err = 'No LSP client found for the current file, but "renamer" requires one to work.',
    setup_called = '"renamer.setup()" called and plugin successfully initialized.',
    lsp_client_found = 'LSP client running for the current file.',
}

return {
    strings = strings,
}
