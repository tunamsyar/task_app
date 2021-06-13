defmodule TaskAppWeb.PowMailer do
  use Pow.Phoenix.Mailer
  use Bamboo.Mailer, otp_app: :task_app

  import Bamboo.Email

  @impl true
  def cast(%{user: user, subject: subject, text: text, html: html, assigns: _assigns}) do
    new_email(
      to: user.email,
      from: "myapp@example.com",
      subject: subject,
      html_body: html,
      text_body: text
    )
  end

  @impl true
  def process(email) do
    deliver_now!(email)
  end
end
