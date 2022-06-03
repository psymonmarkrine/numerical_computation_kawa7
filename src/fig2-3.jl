module MakeFig2_3
    using Plots

    linear(x) = x

    function make_plot_area()
        plot( # グラフ領域の作成
            xlim = (-1, 11),
            ylim = (-1, 11),
            xticks = false,
            yticks = false,
            xgrid = false,
            ygrid = false,
            leg = false,
            framestyle = :box,
            size = (480, 480),
        )

        # 座標軸
        plot!([0, 0], [-0.5, 10.5], linecolor = :black)
        plot!([-0.5, 10.5], [0, 0], linecolor = :black)

        # y = x の描画
        x = [0,10]
        plot!(
            x,
            linear.(x),
            linecolor = :black
        )
        annotate!(
            x[end], linear(x[end]), "\$y = x\$",
            annotationvalign = :bottom,
        )
    end

    function plot_arrows(x, y, g, num_loop)
        scatter!([x],[y])
        for _ = 1:num_loop
            x, y = plot_arrow_to_g(x, y, g)
            x, y = plot_arrow_to_linear(x, y)
        end
    end

    function plot_arrow_to_g(x, y, g)
        y_next = g(x)
        plot!(
            [x, x],
            [y, y_next],
            arrow = true,
            linecolor = :black,
        )

        return x, y_next
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

    function a(num_loop=2)
        g(x) = x/2 + 5/2
        
        make_plot_area()

        # y = g(x) の描画
        x = [0, 10]
        plot!( 
            x,
            g.(x),
            linecolor = :black
        )
        annotate!(
            x[end], g(x[end]), "\$y = g(x)\$",
            annotationvalign = :bottom,
        )

        plot_arrows(2.5, 0, g, num_loop)
        plot_arrows(7.5, 0, g, num_loop)

        savefig("../docs/img/fig2-3-a.svg")
    end

    function b(num_loop=8)
        g(x) = -4x/5 + 9

        make_plot_area()

        # y = g(x) の描画
        x = [0, 10]
        plot!(
            x,
            g.(x),
            linecolor = :black
        )
        annotate!(
            x[end], g(x[end]), "\$y = g(x)\$",
            annotationvalign = :top,
            annotationhalign = :right
        )

        plot_arrows(2, 0, g, num_loop)

        savefig("../docs/img/fig2-3-b.svg")
    end

    function c(num_loop=3)
        g(x) = 3x/2 - 5/2
        
        make_plot_area()

        # y = g(x) の描画
        x = [5/3, 10]
        plot!(
            x,
            g.(x),
            linecolor = :black
        )
        annotate!(
            25/3, g(25/3), "\$y = g(x)\$",
            annotationhalign = :right,
        )

        plot_arrows(4, 0, g, num_loop)
        plot_arrows(6, 0, g, num_loop)

        savefig("../docs/img/fig2-3-c.svg")
    end

    function d(num_loop=8)
        g(x) = -6x/5 + 11

        make_plot_area()

        # y = g(x) の描画
        x = [55/6, 5/6]
        plot!(
            x,
            g.(x),
            linecolor = :black
        )
        annotate!(
            x[end], g(x[end]), "\$y = g(x)\$",
            annotationvalign = :bottom,
            annotationhalign = :left
        )

        plot_arrows(4, 0, g, num_loop)

        savefig("../docs/img/fig2-3-d.svg")
    end

end # module MakeFig2_3

if abspath(PROGRAM_FILE) == @__FILE__
    Main.MakeFig2_3.a()
    Main.MakeFig2_3.b()
    Main.MakeFig2_3.c()
    Main.MakeFig2_3.d()
end
