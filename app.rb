require 'sinatra'

PHRASES = ["She is so <i>sexy</i>, isn't she?", "Also so very lovely", "A bit tacky, don't you think?", "Men <br><br>will<br><br> be men"]
BG_COLORS=["#FF6138","#FFFF9D","#BEEB9F","#79BD8F","#00A388"]
TEXT_COLORS=["#DC3522","#D9CB9E","#374140","#2A2C2B","#1E1E20"]

get '/' do
  @phrase = PHRASES.sample
  @bg_color = BG_COLORS.sample
  @text_color = TEXT_COLORS.sample
  erb :index
end
