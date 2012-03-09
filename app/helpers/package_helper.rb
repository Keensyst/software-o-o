module PackageHelper
  
  def human_arch arch
    case arch
    when "i586"
      "32 Bit"
    when "i386"
      "32 Bit"
    when "x86_64"
      "64 Bit"
    when  "amd64"
      "64 Bit"
    when "src"
      "Source"
    when "nosrc"
      "Source"
    else
      arch
    end
  end

   def shorten(text, chars)
     text.length > chars ? text[0,chars] + "..." : text
  end

   def prepare_desc txt
     txt = txt.gsub(/[\n][\n]+/, "\n\n")
     txt = create_links txt
     txt
   end

  def create_links (txt)
    txt = txt.gsub(/(https?:\/\/[-_A-Za-z0-9\/\(\)\[\]:,.;?&+@#%=~|]+[^),. <"'\n\r])/m, '<a href="\1">\1</a> ')
    txt
  end



end