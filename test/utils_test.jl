using HMatrices
using Test
using StaticArrays
using LinearAlgebra

M = rand(3, 3)

ref = svdvals(M)[end]
@test HMatrices.min_svd_3x3(M) ≈ ref

M = @SMatrix rand(3, 3)
ref = svdvals(M)[end]
@test HMatrices.min_svd_3x3(M) ≈ ref
