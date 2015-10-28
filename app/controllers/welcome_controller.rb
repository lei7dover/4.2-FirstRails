class WelcomeController < ApplicationController

  def index
    render :text=> "Welcome to my page. "
  end

  def show
    render :text=> "Hello #{params[:name]} I hope you enjoy my site."
  end

  def lorem
    if params[:number].nil?
      number = 1
    else
      number = params[:number].to_i
    end

    if params[:para].downcase == "standard"
      @lorem= ["Lorem ipsum dolor sit amet, duo paulo accusamus complectitur id, pro ea omittam nominati, cum te eros dictas principes. Ne sea ocurreret accusamus. Simul percipit ei duo, fabellas facilisi salutandi vis eu. Mel id amet vero doming. Eu graeco albucius usu, has ne constituto comprehensam concludaturque, ea meis adhuc propriae ius. Mediocrem mnesarchum usu an. Mei libris tractatos laboramus cu, ius ei verear reprehendunt, ea nec minim postulant."] * number
   elsif params[:para].downcase == "complex"
     @lorem = ["Everti complectitur vix et, ius etiam movet omnes et. Ut ius enim harum ubique, te errem congue homero usu. Per vero intellegat et, duo lorem nullam te, doming sadipscing contentiones ne nec. Ne duo aeque melius nominavi, ius et quodsi percipit. Has in sonet regione, vim eu fugit iracundia hendrerit. Id nam ridens impetus blandit, praesent splendide an ius.",
     "In minim melius cum, vis esse luptatum voluptaria id, in error simul vix. Id aliquid disputando mea. Has mazim nihil in, ad ridens hendrerit usu. Et semper senserit nam, doctus volutpat quaerendum ea mel, ne eum modo viris singulis. Et viris tantas ancillae vis."] * number
  else
    @lorem = ["Not a valid entry."]
  end

  end

end
