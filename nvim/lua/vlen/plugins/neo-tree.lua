local setup, neotree = pcall(require, "neo-tree")
if not setup then
  return
end

neotree.setup({
  close_if_last_window = false,
  enable_git_status = true,
  enable_diagnostics = true,
  sort_case_insensitive = false,
  sort_function = nil,
  default_component_configs = {
    container = {
      enable_character_fade = false
    },
    indent = {
      indent_size = 1,
      padding = 0,
      with_markers = true,
    }
  },
  window = {
    position = "left",
    width = 40,
  },
  filesystem = {
    follow_current_file = true,
  }
})
