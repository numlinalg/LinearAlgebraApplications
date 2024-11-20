#using LAModels, Test

struct CTPhantom <: LAModels.LinearSystemsProblem
    A::Matrix{Float64}
    b::Vector{Float64}
    sol::Vector{Float64}
    init::Vector{Float64}
    interpret::Function
end

struct CTPhantomLS <: LAModels.LeastSquaresProblem
    A::Matrix{Float64}
    b::Vector{Float64}
    sol::Vector{Float64}
    resid_norm::Float64
    init::Vector{Float64}
    interpret::Function
end

#test_linear_systems_problems(CTPhantom)