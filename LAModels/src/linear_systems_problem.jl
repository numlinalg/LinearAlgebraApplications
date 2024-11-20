fieldsLinearSystemsProblem = Dict(
    :A => Matrix{Float64},
    :b => Vector{Float64},
    :sol => Vector{Float64},
    :init => Vector{Float64},
    :interpret => Function,
)

macro test_linear_systems_problem(type)
    expr = quote

        @testset verbose=true "Linear System Problem: $(string($(esc(type))))" begin
            #Test super type 
            @test supertype($(esc(type))) == LinearSystemsProblem

            #Test field names and types
            for (fname, ftype) in $(fieldsLinearSystemsProblem)
                #Test field name belongs to type 
                @test fname in fieldnames($(esc(type)))
                @test fieldtype($(esc(type)), fname) == ftype
            end
        end
    end
    
    return expr
end