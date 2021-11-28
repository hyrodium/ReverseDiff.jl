using Documenter, ReverseDiff

makedocs(;
    modules=[ReverseDiff],
    sitename="ReverseDiff.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="http://www.juliadiff.org/ReverseDiff.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Limitation of ReverseDiff" => "limits.md",
        "API" => "api.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaDiff/ForwardDiff.jl",
)
