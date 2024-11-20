# Linear Algebra Models

```@meta
CurrentModule = LAModels
```

`LAModels` is a module that provides a minimum interface needed by different
    linear algebra problems. 
    This interface includes abstract types to specify the type of problem 
    being considered, and it includes test to ensure that any subtypes of 
    the abstract types contain the minimum necessary interface.


## Abstract Types 

```@docs

LinearSystemsProblem 

LeastSquaresProblem
```

!!! info "Subspace Approximation Problems"
    Subspace approximation problems will also have an abstract type and
    corresponding tests as this suite of packages evolves.

## Macros for Testing

```@docs

@test_linear_systems_problem

@test_least_squares_problem
```
