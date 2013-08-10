module ApplicationHelper
  # lbe note: this started out blank, but on page 98, this section was added
  # ALONG with a change to the show.html.erb for the How
  # lbe: enhance Would look better as Make a sandwich - How To Instructions
  #    play with this later!
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Instructions").join(" - ")
      end
    end
  end
end
