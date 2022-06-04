module MakeFig2_4
    using Plots
    using Zygote

    sqrt_a = 0.85
    f(x) = x^2 - sqrt_a^2
    g(x) = x - f(x) / f'(x)
    linear(x) = x

    function make_plot_area_newton()
        plot( # グラフ領域の作成
            f,
            xlim = (-0.1sqrt_a, 2.1sqrt_a),
            ylim = (-1.1sqrt_a, 1.1sqrt_a),
            xticks = false,
            yticks = false,
            xgrid = false,
            ygrid = false,
            leg = false,
            linecolor = :black,
            framestyle = :box,
            size = (480, 480),
        )
        x = 1.3sqrt_a
        annotate!(
            x, f(x), "\$f(x)\$",
            annotationhalign = :right,
            annotationvalign = :bottom,
        )

        # 座標軸
        plot!([0, 0], [-1, 2], linecolor = :black)
        plot!([-1, 2], [0, 0], linecolor = :black)

        # 縮小写像区間の描画
        plot!([sqrt_a / √3, 2], [0, 0], linecolor = :red)
    end

    function make_plot_area_redmap()
        plot( # グラフ領域の作成
            g,
            xlim = (-0.1sqrt_a, 2.1sqrt_a),
            ylim = (-0.1sqrt_a, 2.1sqrt_a),
            xticks = false,
            yticks = false,
            xgrid = false,
            ygrid = false,
            leg = false,
            linecolor = :black,
            framestyle = :box,
            size = (480, 480),
        )
        x = 0.3sqrt_a
        annotate!(
            x, g(x), "\$g(x)\$",
            annotationhalign = :left,
            annotationvalign = :bottom,
        )

        # y = x の描画
        x = [0,10]
        plot!(x, linear.(x), linecolor = :black)

        # 座標軸
        plot!([0, 0], [-1, 2], linecolor = :black)
        plot!([-1, 2], [0, 0], linecolor = :black)

        # 縮小写像区間の描画
        plot!([sqrt_a / √3, 2], [0, 0], linecolor = :red)
    end

    function plot_arrow_to_f(x, y, f)
        y_next = f(x)
        plot!(
            [x, x],
            [y, y_next],
            arrow = true,
            linecolor = :black,
        )

        return x, y_next
    end

    function plot_arrow_newton(x, y)
        y′ = f'(x)
        x_next = x - y / y′
        plot!(
            [x, x_next],
            [y, 0],
            arrow = true,
            linecolor = :black,
        )
    
        return x_next, 0
    end

    function plot_arrow_to_linear(x, y)
        x_next = linear(y)
        plot!(
            [x, x_next],
            [y, y],
            arrow = true,
            linecolor = :black,
        )

        return x_next, y
    end

    function plot_arrows_newton(x, y, f, num_loop)
        scatter!([x],[y])
        for _ = 1:num_loop
            x, y = plot_arrow_to_f(x, y, f)
            x, y = plot_arrow_newton(x, y)
        end
    end

    function plot_arrows(x, y, g, num_loop)
        scatter!([x],[y])
        for _ = 1:num_loop
            x, y = plot_arrow_to_f(x, y, g)
            x, y = plot_arrow_to_linear(x, y)
        end
    end

    function newton_from_outer(num_loop=2)
        make_plot_area_newton()
        plot_arrows_newton(0.5sqrt_a, 0, f, num_loop)

        savefig("../docs/img/fig2-4-a.svg")
    end

    function newton_from_inner(num_loop=2)
        make_plot_area_newton()
        plot_arrows_newton(1.5sqrt_a, 0, f, num_loop)

        savefig("../docs/img/fig2-4-b.svg")
    end

    function redmap_from_outer(num_loop=2)
        make_plot_area_redmap()
        plot_arrows(0.5sqrt_a, 0, g, num_loop)

        savefig("../docs/img/fig2-4-c.svg")
    end

    function redmap_from_inner(num_loop=2)
        make_plot_area_redmap()
        plot_arrows(1.5sqrt_a, 0, g, num_loop)

        savefig("../docs/img/fig2-4-d.svg")
    end

end # module MakeFig2_4

if abspath(PROGRAM_FILE) == @__FILE__
    Main.MakeFig2_4.newton_from_outer()
    Main.MakeFig2_4.newton_from_inner()
    Main.MakeFig2_4.redmap_from_outer()
    Main.MakeFig2_4.redmap_from_inner()
end
