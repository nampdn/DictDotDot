# DictDotDot.jl

Simple Julia package for setting keys in a `Dict` using dotted string.

## Basic Usage

```julia
using DictDotDot

# Defind a single Dict
dict = Dict()
# Dict{Any, Any}

# Mutating the dict with nested key
dotset!(dict, "greeting.message", "Hello World!")
# ("greeting" => Dict{Any,Any}("message" => "Hello World!"))
```

## Documentation

```julia
dotset!(dict::Dict, dottedkey::String, value::Any)
```
