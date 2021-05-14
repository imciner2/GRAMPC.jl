module GRAMPC

using GRAMPC_jll
using LinearAlgebra

const CallbackArg = Union{Symbol, Function}
const Callback    = Union{Function, Nothing}
const MassMatrix  = Union{Array{Float64}, UniformScaling}

# Define the library error handling
include( "cinterface/errorHandling.jl" )

# Constants used in this package
include( "cinterface/constants.jl" )

# Must come before the ctypes because this defines the wrapper struct
include( "cinterface/wrapperFunctions.jl" )

# Most types used in this package
include( "cinterface/ctypes.jl" )
include( "types.jl" )

# Low-level problem translation for the C wrapper
include( "cinterface/options.jl" )

# High-level Julia part of the interface
include( "dynamics.jl" )

end
