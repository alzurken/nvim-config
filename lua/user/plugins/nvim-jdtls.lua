local cmp_status_ok, jdtls = pcall(require, "jdtls")
if not cmp_status_ok then
	return
end


local config = {
    cmd = {'/home/cold/.local/share/nvim/mason/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
jdtls.start_or_attach(config)
