module GLV
    using Distributions, LinearAlgebra, Random, StatsBase

    # include("GLV_functions.jl") #To simulate GLV
    # include("asymp_functions.jl") #To fit asymptote
    include("pred_functions.jl") #To get redicted richness . 
    include("temp_functions.jl") #To get Temperature dependence. 
end