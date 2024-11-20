fieldsLeastSquaresProblem = Dict(
    :A => Matrix{Float64},
    :b => Vector{Float64},
    :sol => Vector{Float64},
    :resid_norm => Float64,
    :init => Vector{Float64},
    :interpret => Function,   
)

macro test_least_squares_problem(type)
    expr = quote

        @testset verbose=true "Least Squares Problem: $(string($(esc(type))))" begin
            #Test super type 
            @test supertype($(esc(type))) == LeastSquaresProblem

            #Test field names and types
            for (fname, ftype) in fieldsLeastSquaresProblem
                #Test field name belongs to type 
                @test fname in fieldnames($(esc(type)))
                @test fieldtype($(esc(type)), fname) == ftype
            end
        end
    end
    
    return expr
end