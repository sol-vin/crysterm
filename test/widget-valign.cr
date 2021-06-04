require "../src/crysterm"

module Crysterm
  s = Screen.new auto_padding: false

  b = Widget::Box.new(
    top: "center",
    left: "center",
    width: "50%",
    height: 5,
    align: Tput::AlignFlag::HCenter,
    valign: Tput::AlignFlag::VCenter,
    # valign: AlignFlag::Bottom,
    content: "Foobar.",
    border: true
  )

  s.append b

  s.on(Event::KeyPress) do |e|
    # STDERR.puts e.inspect
    if e.char == 'q'
      # e.accept!
      s.destroy
      exit
    end
  end

  s.display.exec
end
