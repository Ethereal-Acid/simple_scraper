require 'simple_scraper/page'
require 'mechanize'
# container file for my useful methods, as applied to web scraping.
class SimpleScraper
  # Replaces unicode with ASCII letters
  def self.unaccent(string)
    string.tr('èéêëēėę', 'e').tr('ûüùúū', 'u').tr('îïíīįì', 'i').tr('ôöòóœøōõ', 'o').tr('àáâäæãåā', 'a').tr('śš', 's').tr('ł', 'l').tr('žźż', 'z').tr('çćč', 'c').tr('ñń', 'n').tr('ÿ', 'y').tr('ÈÉÊËĒĖĘ', 'E').tr('Ÿ', 'Y').tr('ÛÜÙÚŪ', 'U').tr('ÎÏÍĪĮÌ', 'I').tr('ÔÖÒÓŒØŌÕ', 'O').tr('ÀÁÂÄÆÃÅĀ]', 'A').tr('ŚŠ', 'S').tr('Ł', 'L').tr('ŽŹŻ', 'Z').tr('ÇĆČ', 'C').tr('ÑŃ', 'N')
  end

  # Remove attribute tags and newline.
  def self.untag(string)
    string.gsub(/<\/?\w+>/, '').gsub(/\n/, "")
  end

  # Combines unaccent and untag methods for easy operation
  def self.clean(string)
    untag(unaccent(string))
  end

  def initialize(*args)
    agent = Mechanize.new
    # sets user_agent to random, non-default.
    agent.user_agent=(Mechanize::AGENT_ALIASES[(Mechanize::AGENT_ALIASES.keys - ['Mechanize']).sample])
  end

  # @return [ASCII ART(String)]
  def self.title
    puts "\u{250C} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500}";
    puts "                                                           \u{2502}";
    puts "\u{2502}        #####  ### #     # ######  #       #######";
    puts "        #     #  #  ##   ## #     # #       #              \u{2502}";
    puts "\u{2502}       #        #  # # # # #     # #       #";
    puts "         #####   #  #  #  # ######  #       #####          \u{2502}";
    puts "\u{2502}             #  #  #     # #       #       #";
    puts "        #     #  #  #     # #       #       #              \u{2502}";
    puts "\u{2502}        #####  ### #     # #       ####### #######";
    puts "                                                           \u{2502}";
    puts "\u{2502}  #####   #####  ######     #    ######  ####### ######";
    puts "  #     # #     # #     #   # #   #     # #       #     #  \u{2502}";
    puts "\u{2502} #       #       #     #  #   #  #     # #       #     #";
    puts "   #####  #       ######  #     # ######  #####   ######   \u{2502}";
    puts "\u{2502}       # #       #   #   ####### #       #       #   #";
    puts "  #     # #     # #    #  #     # #       #       #    #   \u{2502}";
    puts "\u{2502}  #####   #####  #     # #     # #       ####### #     #";
    puts "                                                           \u{2502}";
    puts "\u{2502}";
    puts " \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2500} \u{2518}";
  end
end
