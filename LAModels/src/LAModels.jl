module LAModels

import Test:@test, @testset

abstract type LinearSystemsProblem end
abstract type LeastSquaresProblem end
abstract type SubspaceApproximationProblem end

include("linear_systems_problem.jl")
include("least_squares_problem.jl")


export LinearSystemsProblem, @test_linear_systems_problem
export LeastSquaresProblem, @test_least_squares_problem

end # module LAModels

