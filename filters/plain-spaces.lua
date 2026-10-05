-- Pandoc's smart typography puts a non-breaking space after abbreviations
-- like "Ph.D.", and Latin Modern draws that space 50% wider than a normal
-- one, leaving a visible gap. Swap it back for an ordinary space.
function Str(el)
  if el.text:find("\u{00A0}") then
    el.text = el.text:gsub("\u{00A0}", " ")
    return el
  end
end
