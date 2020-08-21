class FriendshipsController < ApplicationController
  def create
    friend = User.find_by(email: params[:friend_email])
    # friendship = Friendship.create!(user_id: current_user.id, friend_id: friend.id) if friend
    #this creates the inverse relationship, destroy will need similar treatment
    if friend
      friendships = [
                      {user_id: current_user.id, friend_id: friend.id},
                      {friend_id: current_user.id, user_id: friend.id }
                    ]
      friendship = Friendship.create!(friendships) #if friend
    end
    if friendship
      flash[:success] = 'You have a new Friend.'
    else
      flash[:error] = 'Sorry your friend cannot be found.'
    end
    redirect_to request.referer
  end
end
