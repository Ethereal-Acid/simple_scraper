

RSpec.describe SimpleScraper do
  it 'has a version number' do
    expect(SimpleScraper::VERSION).not_to be nil
  end
  it 'cleans unicode localizations' do
    expect(SimpleScraper::delocalize("Áśšhöłéš árė ęvērÿwhêrē")).to eq("Assholes are everywhere")
  end
  
  it 'does nothing if there is nothing to be done' do
    expect(SimpleScraper::delocalize("Assholes are everywhere")).to eq("Assholes are everywhere")
  end
  
  it 'cleans newline characters' do
    expect(SimpleScraper::detag("String \nTheory")).to eq("String Theory")
  end
  
  it 'removes bold tags' do
    expect(SimpleScraper::detag("<b>Buttsex is alright</b>")).to eq("Buttsex is alright")
  end
  
  it 'removes italics' do
    expect(SimpleScraper::detag("<i>I see you</i>")).to eq("I see you")
  end
  
  it 'removes any tags consisting of a single word' do
    expect(SimpleScraper::detag("<html>Hypertext Markup Language</html>")).to eq("Hypertext Markup Language")
  end
  
  it 'removes tags consisting of multiple words, including spaces' do
    expect(SimpleScraper::detag("<div id=homosexual>I'm gay</div>"))
  end
  
  it 'removes nested tags 2 deep' do
    expect(SimpleScraper::detag("<css><html>THIS IS TEST</html></css>")).to eq("THIS IS TEST")
  end
  
  it 'does nothing if there is nothing to be done' do
    expect(SimpleScraper::detag("Stupid Monkey")).to eq("Stupid Monkey")
  end
  
  it 'supports nesting' do
    expect(SimpleScraper::clean("<b><i>Áśšhöłéš árė ęvērÿwhêrē\n</i></b>"))
  end
end
