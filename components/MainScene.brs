sub Main()
    screen = CreateObject("roSGScreen")
    port = CreateObject("roMessagePort")

    screen.SetMessagePort(port)

    scene = screen.CreateScene("MainScreen")
    screen.Show()

    while true
        msg = wait(0, port)
    end while
end sub
