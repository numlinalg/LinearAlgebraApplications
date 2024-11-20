module LAModels

import Test:@test, @testset

"""
    LinearSystemsProblem

Abstract type to model a consistent linear systems problem,
```math
Ax = b,
```
where ``x`` is unknown. 
"""
abstract type LinearSystemsProblem end

"""
    LeastSquaresProblem 

Abstract type to model a least squares problem, 
```math
\\min_{x} \\Vert Ax - b \\Vert_2^2.
```
"""
abstract type LeastSquaresProblem end

"""
    SubspaceApproximationProblem

Abstract type to model a subspace approximation problem.
"""
abstract type SubspaceApproximationProblem end

include("linear_systems_problem.jl")
include("least_squares_problem.jl")


export LinearSystemsProblem, @test_linear_systems_problem
export LeastSquaresProblem, @test_least_squares_problem

end # module LAModels

