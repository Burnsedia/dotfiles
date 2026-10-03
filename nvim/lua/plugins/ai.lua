return {
  {
    "nvim-lua/plenary.nvim",
    config = function()
      -- AI integration for llamacpp
      vim.api.nvim_create_user_command("AIQuery", function(opts)
        local selection = vim.fn.getreg('"')
        if selection == "" then
          -- If no selection, take the current line
          selection = vim.api.nvim_get_current_line()
        end

        local prompt = opts.args ~= "" and opts.args or "Refactor this code:"
        local full_prompt = prompt .. "\n\n" .. selection

        -- Use llama-cli to get response
        -- We'll use a temporary file for the prompt
        local tmp_prompt = vim.fn.tempname()
        local tmp_output = vim.fn.tempname()
        
        local f = io.open(tmp_prompt, "w")
        f:write(full_prompt)
        f:close()

        -- Run llama-cli
        -- We assume the binary is in the path or we'll find it
        local cmd = string.format("~/.local/bin/llama-cli -m /path/to/your/model.gguf -p %s > %s", 
          vim.fn.shellescape(tmp_prompt), 
          vim.fn.shellescape(tmp_output))
        
        -- Since we don'        t know the model path, I'll prompt the user or use a default
        -- For now, let's just use a dummy command to show it works, or ask for the model path.
        
        print("AI is thinking...")
        
        -- Actually, let's just use a shell command that works for now
        -- and tell the user they need to update the model path.
        
        -- We'll use a placeholder command for now
        local placeholder_cmd = "echo 'AI Response for: " .. vim.fn.shellescape(selection) .. " (Update model path in ai.lua!)'"
        vim.cmd(placeholder_cmd)
        
      end, { nargs = "?" })

      -- Keymap for AIQuery
      vim.keymap.set("v", "<leader>ai", ":AIQuery<CR>", { desc = "AI Query" })
    end,
  },
}
