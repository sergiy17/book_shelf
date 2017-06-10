module ApplicationHelper
  def full_title(page_title="")
    @basic_title = "BOOK SHELF"
    if page_title
      @basic_title + " | " + page_title
    else
      @basic_title
    end
  end
end
