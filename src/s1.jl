# 第1章の問題

## 問題1-1

function calc_εA() 
    εA = Float64(1.0)
    εX = Float64(0.5)
    while εX > 0
        εA = εX
        εX /= 2
    end
    return εA
end

function calc_εM()
    εM = Float64(1.0)
    while 1 + εM/2 > 1
        εM /= 2
    end
    return εM
end


## 問題1-2

function scalar_product(X::V, Y::V) where {T, V <: Vector{T}}    
    S = X' * Y
    return S
end

function product_mat_vec(A::M, X::V) where {T, M <: Matrix{T}, V <: Vector{T}}
    b = A * X
    return b
end

function matrix_multiplicate(A::M, B::M) where {T, M <: Matrix{T}}
    C = A * B
    return C
end

# gcd(x, y...)
# lcm(x, y...)
# reverse(A)
# sort(r)
# Statistics.mean(r)
# Statistics.std(r)
