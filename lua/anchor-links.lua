local link_to_toc = pandoc.Link({pandoc.Str '↑'}, '#TOC')

function Header (h)
  -- h.content = h.content .. {pandoc.Space(), link_to_toc}

  local selflink = pandoc.Link(
    '#',
    '#'..h.identifier,
    '',
    {['class'] = 'anchor icon-link', ['aria-hidden'] = 'true'}
    )
  h.content:insert(" ")
  h.content:insert(selflink)
  return h
end
