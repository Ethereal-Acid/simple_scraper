# Container file for my useful methods, as applied to web scraping.
module SimpleScraper
  # Replaces unicode with ASCII letters
  def self.delocalize(string)
    string.tr('èéêëēėę', 'e').tr('ûüùúū', 'u').tr('îïíīįì', 'i').tr('ôöòóœøōõ', 'o').tr('àáâäæãåā', 'a').tr('śš', 's').tr('ł', 'l').tr('žźż', 'z').tr('çćč', 'c').tr('ñń', 'n').tr('ÿ', 'y').tr('ÈÉÊËĒĖĘ', 'E').tr('Ÿ', 'Y').tr('ÛÜÙÚŪ', 'U').tr('ÎÏÍĪĮÌ', 'I').tr('ÔÖÒÓŒØŌÕ', 'O').tr('ÀÁÂÄÆÃÅĀ]', 'A').tr('ŚŠ', 'S').tr('Ł', 'L').tr('ŽŹŻ', 'Z').tr('ÇĆČ', 'C').tr('ÑŃ', 'N')
  end

  # Remove attribute tags and newline.
  def self.detag(string)
    string.gsub(/<\/?\w+>/, '').gsub(/\n/, "")
  end

  # Combines delocalize and detag methods for easy operation
  def self.clean(string)
    detag(delocalize(string))
  end
end
