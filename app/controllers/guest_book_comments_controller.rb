# encoding: utf-8

class GuestBookCommentsController < ApplicationController
  def create
    @guestBook = GuestBook.find(params[:guest_book_id])
    @guestBookComment = @guestBook.guest_book_comment.create(params[:guest_book_comment])
    redirect_to guest_book_path(@guestBook)
  end
 
  def destroy
    @guestBook = GuestBook.find(params[:guest_book_id])
    @guestBookComment = @guestBook.guest_book_comments.find(params[:id])
    @guestBookComment.destroy
    redirect_to guest_book_path(@guestBook)
  end
end
