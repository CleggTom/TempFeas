### Prediction functions
#get bound from mean a value
function interaction_bound(a,N)
    (a*(N-1)) / (a*(N-1) + 1)
end

#get inverse of a lognormal (1/x)
function ln_inv(x)
    LogNormal(-x.μ,x.σ)
end

#function to calculate the richness from a given lognormal distribution of aij, aii and k
#works at probabilty threshold θ
function richness(θ, daij, daii, dK)
    #normalise k
    dk = LogNormal(-(dK.σ^2) /2 , dK.σ)
    
    for N = 1:0.1:500
        bound = interaction_bound( mean(daij) * mean(ln_inv(daii)), N)
        if (1 - cdf(dk,bound))^N < θ
            return(N)
        end
    end
    return(500)
end

