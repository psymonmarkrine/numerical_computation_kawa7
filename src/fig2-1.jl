using Zygote
using Plots

f(x) = x^2 - 1

function make_fig(x0, num_loop)
    x = x0

    plot(
        f,
        xlim = (-6, 6),
        ylim = (-3, 24),
        xticks = false,
        yticks = false,
        xgrid = false,
        ygrid = false,
        leg = false,
        framestyle = :box,
        size = (480, 320),
    )

    for l = 1:num_loop
        annotate!(
            x, 0, "\$x_$(l-1)\$",
            annotationvalign = :top,
        )
        plot_arrow_up(x)
        x = plot_arrow_down(x)
    end
    
    annotate!(
        x, 0, "\$\\alpha\$",
        annotationhalign = :right,
        annotationvalign = :bottom,
    )
    annotate!(
        0, 24, "\$f(x)\$",
        annotationhalign = :left,
        annotationvalign = :top,
    )
            
    plot!(x->0, linecolor = :black)
    plot!([0, 0], [-3, 24],linecolor = :black)
    savefig("../img/fig2-1.svg")
end

function plot_arrow_up(x)
    y = f(x)
    plot!(
        [x, x],
        [0, y],
        arrow = true,
        linecolor = :black,
    )

end

function plot_arrow_down(x)
    y = f(x)
    y′ = f'(x)
    x_next = x - y / y′
    plot!(
        [x, x_next],
        [y, 0],
        arrow = true,
        linecolor = :black,
    )

    return x_next
end


if abspath(PROGRAM_FILE) == @__FILE__
    make_fig(4.8, 3)
end