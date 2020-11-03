class User
  def initialize(email)
    @email = email
  end

  def todos
    Todo.where(email: @email)
  end

  def is_signed_in
    @email.present?
  end
end
