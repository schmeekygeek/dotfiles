lua <<EOF
require('ayu').setup({
    mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    overrides = {}, -- A dictionary with a group names associated with a dictionary with parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

EOF
