class MessagesController < ApplicationController
  def index
    @message = Message.new
    #メッセージを全て取得する
    @messages = Message.all
  end
  
  def create
    @message = Massage.new(create_params)
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  end
  private
  def message _params
    params.require(:message).permit(:name, :body)
  end
  ##ここまで
end
