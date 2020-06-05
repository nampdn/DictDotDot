using DictDotDot
using Test

@testset "Set" begin
    @testset "Set single property" begin
        d = Dict()
        DictDotDot.dotset!(d, "hello", "world")
        DictDotDot.dotset!(d, "hi", Dict("im" => "DictDotDot"))
        @test d["hello"] == "world"
        @test d["hi"]["im"] == "DictDotDot"
    end
end
