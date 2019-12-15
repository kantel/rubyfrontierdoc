# encoding: utf-8

def nextprevlinks()
  title, path = html.getTitleAndPath(@adrPageTable[:title])
  s = ""
  if  @adrPageTable[:prevp]
    # puts "#{prevp}"
    pname = "#{prevp}"
    # puts "#{pname}"
    s << html.getLink(imageref("arrow-left"), pname)
  else
    s << imageref("arrow-left-grey")
  end
  s << "&nbsp;"
  if @adrPageTable[:nextp]
    nname = "#{nextp}"
    s << html.getLink(imageref("arrow-right"), nname)
  else
    s << imageref("arrow-right-grey")
  end
  "<p>#{s}</p>\n"
end