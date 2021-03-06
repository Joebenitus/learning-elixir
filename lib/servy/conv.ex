defmodule Servy.Conv do
  defstruct method: "",
  path: "",
  params: %{},
  resp_body: "",
  status: nil

  def full_status(conv) do
    "#{conv.status} #{status_message(conv.status)}"
  end

  defp status_message(code) do
    %{
      200 => "OK",
      201 => "Created",
      401 => "Unauthorized",
      403 => "Forbidden",
      404 => "Not Found",
      500 => "Internal Server Error"
    }[code]
  end
end
