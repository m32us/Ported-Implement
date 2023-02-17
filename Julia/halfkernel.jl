function half_kernel(nₛₐₘₚₗₑₛ, minx::Int64=-20, noise::Int64=4, r₁::Int64=20, r₂::Int64=35, ratio::Float64 = 0.6)

	if nₛₐₘₚₗₑₛ % 2 != 0
		nₛₐₘₚₗₑₛ = nₛₐₘₚₗₑₛ + 1
	end

	halfₙₛₐₘₚₗₑₛ = div(nₛₐₘₚₗₑₛ, 2)

	ϕ₁ = rand(halfₙₛₐₘₚₗₑₛ, 1) * π
	inner = [minx .+ r₁ .+ sin.(ϕ₁) .- .5 .* noise + noise .* rand(halfₙₛₐₘₚₗₑₛ, 1) r₁ .* ratio .* cos.(ϕ₁) .- .5 .* noise + noise .* rand(halfₙₛₐₘₚₗₑₛ, 1)]

	ϕ₂ = rand(halfₙₛₐₘₚₗₑₛ, 1) * π
	outer = [minx .+ r₂ .+ sin.(ϕ₂) .- .5 .* noise + noise .* rand(halfₙₛₐₘₚₗₑₛ, 1) r₂ .* ratio .* cos.(ϕ₂) .- .5 .* noise + noise .* rand(halfₙₛₐₘₚₗₑₛ, 1)]

	return inner', outer'
end