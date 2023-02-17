function crescentfullmoon(nₛₐₘₚₗₑₛ, r₁::Int64=5, r₂::Int64=10, r₃::Int64=20)
	if nₛₐₘₚₗₑₛ % 4 != 0
		nₛₐₘₚₗₑₛ = round(div(nₛₐₘₚₗₑₛ, 4)) + 4
	end

	n₁ = div(nₛₐₘₚₗₑₛ, 4)
	n₂ = nₛₐₘₚₗₑₛ - n₁

	ϕ₁ = rand(n₁, 1) * 2 * π
	R₁ = sqrt.(rand(n₁, 1))
	moon = [cos.(ϕ₁) .* R₁ sin.(ϕ₁) .* R₁]

	d = r₃ - r₂
	ϕ₂ = rand(n₂, 1) * π
	R₂ = sqrt.(rand(n₂, 1))
	crescent = [cos.(ϕ₂) .* (r₂ .+ R₂ * d) sin.(ϕ₂) .* (r₂ .+ R₂ * d)]

	return moon', crescent'
end