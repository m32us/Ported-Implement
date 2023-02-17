function corners(nₛₐₘₚₗₑₛ, scale::Int64=10, gapwidth::Int64=2, cornerwidth::Int64=2)
	quad = div(nₛₐₘₚₗₑₛ, 4)
	half = div(nₛₐₘₚₗₑₛ, 2)

	x⁺ₘᵢₙ = [ones(quad,1) -1*ones(quad, 1) ones(quad, 1) -1*ones(quad, 1)]
	y⁺ₘᵢₙ = [ones(quad,1) -1*ones(2*quad, 1) ones(quad, 1)]

	horizontal = [
		x⁺ₘᵢₙ[1:2, :] * gapwidth + x⁺ₘᵢₙ[1:2, :] * scale .* rand(half, 1)
        y⁺ₘᵢₙ[1:2, :] * gapwidth + cornerwidth * y⁺ₘᵢₙ[1:2, :] .* rand(half, 1)
		floor((0:half-1)'/ (quad*.5))
	]
	vertical = [
		x⁺ₘᵢₙ[2:2, :] * gapwidth + cornerwidth * x⁺ₘᵢₙ[2:2, :] .* rand(half,1)
		y⁺ₘᵢₙ[2:2, :] * gapwidth + y⁺ₘᵢₙ[2:2, :] * scale .* rand(half, 1)
		floor((0:half-1)'/(quad*.5))
	]
end