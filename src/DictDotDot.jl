module DictDotDot
get_path_segments(path::String) = split(path, ".")

function dotset!(root::AbstractDict, dottedkeys::String, value)
    dict = root
    paths = get_path_segments(dottedkeys)
    parentdict = dict
    for i = 1:length(paths)
        p = paths[i]
        if i == length(paths)
            dict[p] = value
        else
            if haskey(dict, p)
            else
                if length(keys(dict)) == 0
                    dict[p] = Dict()
                else
                    newchild = Dict(String(p) => Dict())
                    dict = merge(Dict{Any,Any}(dict), newchild)
                    if (i > 1)
                        parentdict[paths[i-1]] = dict
                    end
                end
            end
            parentdict = dict
            dict = dict[p]
        end
    end
    root
end
end # module
