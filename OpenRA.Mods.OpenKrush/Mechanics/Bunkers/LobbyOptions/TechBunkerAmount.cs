#region Copyright & License Information

/*
 * Copyright 2007-2022 The OpenKrush Developers (see AUTHORS)
 * This file is part of OpenKrush, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */

#endregion

namespace OpenRA.Mods.OpenKrush.Mechanics.Bunkers.LobbyOptions;

using Common.Traits;
using Graphics;
using JetBrains.Annotations;
using OpenRA.Traits;
using System.Collections.ObjectModel;
using Traits;

public enum TechBunkerAmountType
{
	None,
	One,
	OnePerTwoPlayers,
	All
}

[UsedImplicitly(ImplicitUseTargetFlags.WithMembers)]
[Desc("Quantos Tech Bunkers aparecem no mapa.")]
public class TechBunkerAmountInfo : TraitInfo, ILobbyOptions
{
	public const string Id = "TechBunkerAmount";
	public const TechBunkerAmountType Default = TechBunkerAmountType.All;

	[Desc("The type of the bunker actor.")]
	public readonly string ActorType = "bunker_techbunker";

	IEnumerable<LobbyOption> ILobbyOptions.LobbyOptions(MapPreview mapPreview)
	{
		yield return new(
			TechBunkerAmountInfo.Id,
			"Quantidade",
			"Quantos Tech Bunkers aparecem no mapa.",
			true,
			0,
			new ReadOnlyDictionary<string, string>(
				new Dictionary<TechBunkerAmountType, string>
				{
					{ TechBunkerAmountType.None, "Nenhum" },
					{ TechBunkerAmountType.One, "1 por mapa" },
					{ TechBunkerAmountType.OnePerTwoPlayers, "1 a cada 2 jogadores" },
					{ TechBunkerAmountType.All, "Todos" }
				}.ToDictionary(e => e.Key.ToString(), e => e.Value)
			),
			TechBunkerAmountInfo.Default.ToString(),
			false,
			TechBunkerInfo.LobbyOptionsCategory
		);
	}

	public override object Create(ActorInitializer init)
	{
		return new TechBunkerAmount(this);
	}
}

public class TechBunkerAmount : INotifyCreated, IPreventMapSpawn, IWorldLoaded
{
	private readonly TechBunkerAmountInfo info;
	private readonly List<ActorReference> bunkers = new();
	private TechBunkerAmountType behavior;

	public TechBunkerAmount(TechBunkerAmountInfo info)
	{
		this.info = info;
	}

	void INotifyCreated.Created(Actor self)
	{
		this.behavior = (TechBunkerAmountType)Enum.Parse(
			typeof(TechBunkerAmountType),
			self.World.LobbyInfo.GlobalSettings.OptionOrDefault(TechBunkerAmountInfo.Id, TechBunkerAmountInfo.Default.ToString())
		);
	}

	bool IPreventMapSpawn.PreventMapSpawn(World world, ActorReference actorReference)
	{
		if (actorReference.Type != this.info.ActorType)
			return false;

		this.bunkers.Add(actorReference);

		return true;
	}

	public void WorldLoaded(World world, WorldRenderer worldRenderer)
	{
		if (this.behavior == TechBunkerAmountType.None)
			return;

		var numBunkers = this.behavior == TechBunkerAmountType.One ? 1 : world.Players.Count(p => p.Playable);

		if (this.behavior == TechBunkerAmountType.OnePerTwoPlayers)
			numBunkers /= 2;

		for (var i = 0; i < numBunkers && this.bunkers.Count > 0; i++)
		{
			var random = world.SharedRandom.Next(0, this.bunkers.Count);
			world.CreateActor(true, this.bunkers[random]);
			this.bunkers.RemoveAt(random);
		}
	}
}
