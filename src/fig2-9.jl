module MakeFig2_9
    import Statistics: mean

    using Plots

    a = [1, -2, 3.25, 4.25, 6, -12.5]

    function f(a::Vector{T}, x) where {T}
        b = 0
        for a_i = a
            b = b*x + a_i
        end
        return b
    end

    function DK(z::Vector{T}, f, a::Vector{Y}) where {T, Y}
        n = length(z)

        diff_prod = z .- transpose(z)
        for i in 1:n
            diff_prod[i,i] = 1
        end
        diff_prod = a[1] * prod(diff_prod, dims=2)
        return z - f.((a,), z) ./ diff_prod
    end

    function aberth_init(a::Vector{T}) where {T}
        n = length(a) - 1
        j = 1:n
        zc = -a[2] / a[1] / n
        R = aberth_radius(a)
        return zc .+ R * exp.(im * 2pi/n * (j .- 3/4))
    end

    function aberth_radius(a::Vector{T}) where {T}
        b = copy(a)
        n = length(a) - 1
        zc = -a[2] / a[1] / n
        for l = 1:n
            for k = 2:n-l+2
                b[k] += b[k-1] * zc
            end
        end

        r0 = maximum([(n * abs(b[k+1]/b[1]))^(1/k) for k = 1:n])
        return r0
    end

    function coefficient_check(a::Vector{T}) where {T}
        i = 1
        for a_i = a
            if a_i == 0
                i += 1
            else
                break
            end
        end
        return a[i:end]
    end

    function DKA_method(a, num_loop)
        a = coefficient_check(a)
        n = length(a) - 1
        z = zeros(Complex, n, num_loop)
        z[:, 1] = aberth_init(a)
        for i = 2:num_loop
            z[:, i] = DK(z[:, i-1], f, a)
        end
        return z
    end

    function makefig2_9(num_loop)
        z = DKA_method(MakeFig2_9.a, num_loop)
        zc = mean(z[:,1])
        R = abs(z[1] - zc)

        figsize = (800, 800)
        figlim = [-1.3R, 1.3R]
        cx = real(zc) .+ R * cos.(2pi*(0:0.01:1))
        cy = imag(zc) .+ R * sin.(2pi*(0:0.01:1))
        plot(
            cx, cy,
            xlim = figlim .+ real(zc),
            ylim = figlim,
            xticks = false,
            yticks = false,
            xgrid = false,
            ygrid = false,
            leg = false,
            linecolor = :black,
            framestyle = :box,
            size = figsize,
        )

        plot!([0, 0], 2figlim, linecolor = :black,) # y軸
        plot!(2figlim, [0, 0], linecolor = :black,) # x軸
        annotate!(0, figlim[2], " \$\\textrm{Im}(z)\$",
            annotationhalign = :left,
            annotationvalign = :top,
        )
        annotate!(figlim[2]+ real(zc), 0, " \$\\textrm{Re}(z)\$",
            annotationhalign = :right,
            annotationvalign = :bottom,
        )

        for i = 1:size(z, 1)
            plot!(real.(z[i,:]), imag.(z[i,:]), linecolor = :black,)
        end
        scatter!(real.(z[:,1]), imag.(z[:,1]))
        scatter!(real.(z[:,end]), imag.(z[:,end]))

        savefig("../docs/img/fig2-9.svg")
    end

end # module MakeFig2_9

if abspath(PROGRAM_FILE) == @__FILE__
    Main.MakeFig2_9.makefig2_9(10)
end