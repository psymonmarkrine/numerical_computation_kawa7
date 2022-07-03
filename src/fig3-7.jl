module MakeFig3_7
    using Plots

    function make_fig()
        plot( # グラフ領域の作成
            lim = (-3, 6),
            grid = :none,
            ticks = (-3:6, ["\$$i\$" for i=-3:6]),
            leg = false,
            framestyle = :box,
            size = (480, 480),
        )
        plot(
            twinx(),
            lim = (-3, 6),
            xmirror = true,
            ticks = (-3:6, ["" for _=-3:6]),
        )

        # 座標軸
        plot!([0, 0], [-3, 6], linecolor = :black, linestyle = :dash)
        plot!([-3, 6], [0, 0], linecolor = :black, linestyle = :dash)

        # x + y - 3 = 0 の描画
        plot!(
            [4, -2],
            [-1, 5],
            linecolor = :black
        )
        annotate!(
            4, -1, "\$x + y - 3 = 0\$",
            annotationvalign = :top,
        )

        # x - y + 1 = 0 の描画
        plot!(
            [-1, 3],
            [ 0, 4],
            linecolor = :black
        )
        annotate!(
            3, 4, "\$x - y + 1 = 0\$",
            annotationhalign = :left,
        )

        X = cos.(2pi * (0:0.01:1))
        Y = sin.(2pi * (0:0.01:1))
        XY2x(X, Y) = ( sqrt(3) * X + Y) / 2 + 1
        XY2y(X, Y) = (-sqrt(3) * X + Y) / 2 + 2
        for i = 1:3
            plot!(
                XY2x.(i*X, i*Y),
                XY2y.(i*X, i*Y),
                linecolor = :black,
            )
        end

        annotate!(
            5, 0, "\$x\$",
            annotationvalign = :bottom,
        )
        annotate!(
            0, 5.5, "\$y\$ ",
            annotationhalign = :right,
        )

        savefig("../docs/img/fig3-7.svg")
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    Main.MakeFig3_7.make_fig()
end
