extends Object

func clamp_stat(chain: ModLoaderHookChain, stat: String, amount: float) -> float:
	var clamped_amount = chain.execute_next([stat, amount])
	print('clamp_stat: ' + stat + ' = ' + str(clamped_amount))
	print('unclamped amount: ' + str(amount))
	match stat:
		'speed':
			return amount
		_:
			return clamped_amount