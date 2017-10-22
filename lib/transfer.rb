class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
  if @sender.valid? && @receiver.valid?
    true
  else
    false
  end
  end

  def execute_transaction
    if
      @sender.valid? == false
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      sender.balance -= self.amount
      receiver.balance += self.amount
      self.status = "complete"
  end
end

end
