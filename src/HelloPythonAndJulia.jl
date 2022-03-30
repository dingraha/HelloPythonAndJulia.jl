module HelloPythonAndJulia

using PythonCall: PythonCall

greet() = print("Hello World!")

const hellopyjl = PythonCall.pynew()

function __init__()
    PythonCall.pycopy!(hellopyjl, PythonCall.pyimport("hellopyjl"))
end

end # module
