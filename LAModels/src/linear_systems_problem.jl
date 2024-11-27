fieldsLinearSystemsProblem = Dict(
    :A => Matrix{Float64},
    :b => Vector{Float64},
    :sol => Vector{Float64},
    :init => Vector{Float64},
)


"""
    @test_linear_systems_problem(type)

Macro for implementing tests to verify that a sub-type of a `LinearSystemsProblem`
    has fields `A::Matrix{Float64}`, `b::Vector{Float64}`, `sol::Vector{Float64}`,
    and `init::Vector{Float64}` to ensure a common interface. 
"""
macro test_linear_systems_problem(type)
    expr = quote

        @testset verbose=true "Linear System Problem: $(string($(esc(type))))" begin
            #Test super type 
            @test supertype($(esc(type))) == LinearSystemsProblem

            #Test field names and types
            for (fname, ftype) in fieldsLinearSystemsProblem
                #Test field name belongs to type 
                @test fname in fieldnames($(esc(type)))
                @test fieldtype($(esc(type)), fname) == ftype
            end
        end
    end
    
    return expr
end