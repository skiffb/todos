module Features
  def create_todo(todo_title)
    click_on "Add a New Todo"
    fill_in "Title", with: todo_title
    click_on "Create Todo"
  end

  def check_css(css,text)
    expect(page).to have_css css, text: text
  end

  def display_todo(todo_title)
    have_css ".todos li", text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css ".todos li.completed", text: todo_title
  end


end
