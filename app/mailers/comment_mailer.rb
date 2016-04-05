class CommentMailer < ActionMailer::Base
  #current_user, @post.user, @comment.content)
  def comment_created (current_user, post_user, comment) 
  	@current_user= current_user
  	@post_user = post_user
  	@content = comment
  	mail(to: post_user.email,
  		  from: "services@gmail.com",
  		  subject: "Your comment was created"
  	)

  end

end