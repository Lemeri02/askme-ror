class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Vadim',
        username: 'installero',
        avatar_url: 'https://secure.gravatar.com/avatar/' \
        '71269686e0f757ddb4f73614f43ae445?s=100'
      ),
      User.new(
        id: 2,
        name: 'Misha',
        username: 'mishka'
      )
    ]
  end

  def new
  end

  def create
  end

  def show
    @user = User.new(
        name: 'Vadim',
        username: 'installero',
        avatar_url: 'https://secure.gravatar.com/avatar/' \
        '71269686e0f757ddb4f73614f43ae445?s=100'
      )

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('19.01.2020')),
      Question.new(text: 'How do you do?', created_at: Date.parse('21.01.2020'))
    ]

    @new_question = Question.new
  end
end
