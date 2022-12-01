local cmp_git_status, cmp_git = pcall(require, "cmp_git")
if not cmp_git_status then
  return
end

cmp_git.setup()

local cmp_commit_status, cmp_commit = pcall(require, "cmp_commit")
if not cmp_commit_status then
  return
end

cmp_commit.setup({
  set = true,
  format = {"<<= ", " =>>"},
  length = 9,
})

local cmp_plugins_status, cmp_plugins = pcall(require, "cmp-plugins")
if not cmp_plugins_status then
  return
end

cmp_plugins.setup({
  files = {".*\\.lua"}
})
