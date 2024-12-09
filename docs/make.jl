using Documenter 

include("../LAModels/src/LAModels.jl")
using .LAModels

makedocs(
    sitename="Linear Algebra Application Test Suite",
    pages = [
        "Linear Algebra Application Test Suite" => "index.md",
        "Linear Algebra Models" => "LAModels.md",
    ]
)

deploydocs(
    repo = "github.com/numlinalg/LinearAlgebraApplications",
)