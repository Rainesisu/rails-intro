class PagesController < ApplicationController

  def about
  end

  def contact
    search = params[:member]
    @members = ['Ben', 'Grace', 'Alex', 'Celine']

    if search.present?
      @members = @members.select { |member| member.start_with?(search[:member]) }
    end
  end

  def home
    @time = Date.today.strftime("%B #{Date.today.day.ordinalize}")
  end
end
