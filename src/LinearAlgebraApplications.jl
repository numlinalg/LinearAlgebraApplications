# A collection of repositories for creating standardized application interfaces 
# for RLinearAlgebra.jl

module 

using Pkg 
Pkg.develop(PackageSpec(path=pwd()*"/../LAModels")); Pkg.instantiate()
end