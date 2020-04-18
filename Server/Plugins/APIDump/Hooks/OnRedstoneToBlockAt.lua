return
{
	HOOK_REDSTONE_AT_BLOCK =
	{
		CalledWhen = "A alock recieves a redstone signal",
		DefaultFnName = "OnRedstoneToBlockAt",  -- also used as pagename
		Desc = [[
			This hook is called when a {{cBlockEntityHandler|block}} recieves a redstone signal.
		]],
		Params =
		{
			{ Name = "World", Type = "{{cWorld}}", Notes = "World in which the block is" },
			{ Name = "BlockX", Type = "number", Notes = "X-coord of the powered block" },
			{ Name = "BlockY", Type = "number", Notes = "Y-coord of the powered block" },
			{ Name = "BlockZ", Type = "number", Notes = "Z-coord of the powered block" },
			{ Name = "BlockType", Type = "number", Notes = "Block type of the powered block" },
			{ Name = "BlockMeta", Type = "number", Notes = "Block meta of the powered block" },
			{ Name = "PowerData", Type = "{{cRedstoneHandler::PoweringData}}", Notes = "Details about the power" },
		},
		Returns = [[
			If the function returns false or no value, the next plugin's callback is called. If the function
			returns true, no other callback is called for this event and the block doesn't get powered by redstone.
		]],
	},  -- HOOK_REDSTONE_AT_BLOCK
}





