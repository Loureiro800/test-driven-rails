module Features
  module TodoHelpers

    def create_todo(todo_title)
        click_on 'Add a new todo'
        fill_in 'Title', with: todo_title
        click_on 'Add'
    end

  end
end
