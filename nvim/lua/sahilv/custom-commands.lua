vim.api.nvim_create_user_command("R" , function ()
    vim.cmd('CphReceive')
end,{})

vim.api.nvim_create_user_command("T" , function ()
    vim.cmd('CphTest')
end,{})

vim.api.nvim_create_user_command("E" , function ()
    local test_no = 1;
    test_no = vim.fn.input("Test Case no.: ")
    vim.cmd('CphEdit' .. tostring(test_no))  
--    print "test_no";
end,{})

vim.api.nvim_create_user_command("D" , function ()
    local test_no = 1;
    test_no = vim.fn.input("Test Case no.: ")
    vim.cmd('CphDelete' .. tostring(test_no))
end,{})

-- these commands will be run like other commands, ie :R to receive question
-- the file and folders will be made automatically
