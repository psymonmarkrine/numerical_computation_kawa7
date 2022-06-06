module MakeFig2_5
    using Plots
    using Zygote

    linear(x) = x
    f(x) = x^3 - x
    g(x) = x - f(x) / f'(x)

    a = sqrt((6 + sqrt(21)) / 15)
    b = sqrt((6 - sqrt(21)) / 15)

    figlim = (-0.53, 1.3)
    figsize = (480, 480)

    function make_plot_area_f()
        plot( # グラフ領域の作成
            f,
            xlim = figlim,
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
        annotate!(
            0, 1.3, "\$f(x)\$",
            annotationhalign = :left,
            annotationvalign = :top,
        )

        plot_axis_and_interval()
    end

    function make_plot_area_g()
        plot( # グラフ領域の作成
            xlim = figlim,
            ylim = figlim,
            xticks = false,
            yticks = false,
            xgrid = false,
            ygrid = false,
            leg = false,
            framestyle = :box,
            size = figsize,
        )
        annotate!(
            0, 1.1, "\$g(x)\$",
            annotationhalign = :left,
            annotationvalign = :bottom,
        )

        # g(x) の描画
        let x = -0.57:0.01:0.57; plot!(x, g.(x),linecolor = :black,) end
        let x = 0.58:0.01:1.3; plot!(x, g.(x),linecolor = :black,) end

        # y = x の描画
        x = [-1,2]
        plot!(x, linear.(x), linecolor = :black)

        plot_axis_and_interval()
    end

    function plot_axis_and_interval()
        # 座標軸
        plot!([0, 0], [-1, 2], linecolor = :black)
        plot!([-1, 2], [0, 0], linecolor = :black)

        # 縮小写像区間の描画
        plot!([-b, b], [0, 0], linecolor = :red)
        plot!([a, 2], [0, 0], linecolor = :red)
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


    function fig1(num_loop=2)
        make_plot_area_f()
        plot_arrows_newton(b, 0, f, num_loop)

        savefig("../docs/img/fig2-5-a.svg")
    end

    function fig2(num_loop=2)
        make_plot_area_f()
        plot_arrows_newton(-0.51, 0, f, num_loop)

        savefig("../docs/img/fig2-5-b.svg")
    end

    function fig3(num_loop=2)
        make_plot_area_f()
        plot_arrows_newton(5^(-0.5), 0, f, num_loop)

        savefig("../docs/img/fig2-5-c.svg")
    end

    function fig4(num_loop=2)
        make_plot_area_g()
        plot_arrows(b, 0, g, num_loop)

        savefig("../docs/img/fig2-5-d.svg")
    end

    function fig5(num_loop=2)
        make_plot_area_g()
        plot_arrows(-0.51, 0, g, num_loop)

        savefig("../docs/img/fig2-5-e.svg")
    end

    function fig6(num_loop=3)
        make_plot_area_g()
        plot_arrows(5^(-0.5), 0, g, num_loop)

        savefig("../docs/img/fig2-5-f.svg")
    end
end # module MakeFig2_5

if abspath(PROGRAM_FILE) == @__FILE__
    Main.MakeFig2_5.fig1()
    Main.MakeFig2_5.fig2()
    Main.MakeFig2_5.fig3()
    Main.MakeFig2_5.fig4()
    Main.MakeFig2_5.fig5()
    Main.MakeFig2_5.fig6()
end