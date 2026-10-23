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

using JetBrains.Annotations;
using OpenRA.Traits;
using System.Collections.ObjectModel;
using Traits;

public enum TechBunkerContainsType
{
	Resources,
	Units,
	Both
}

[UsedImplicitly]
[Desc("O que um Tech Bunker pode conter.")]
public class TechBunkerContainsInfo : TraitInfo, ILobbyOptions
{
	public const string Id = "TechBunkerContains";
	public const TechBunkerContainsType Default = TechBunkerContainsType.Units;

	IEnumerable<LobbyOption> ILobbyOptions.LobbyOptions(MapPreview mapPreview)
	{
		yield return new(
			TechBunkerContainsInfo.Id,
			"Conteúdo",
			"O que um Tech Bunker pode conter.",
			true,
			0,
			new ReadOnlyDictionary<string, string>(
				new Dictionary<TechBunkerContainsType, string>
				{
					{ TechBunkerContainsType.Resources, "Recursos" }, { TechBunkerContainsType.Units, "Unidades" }, { TechBunkerContainsType.Both, "Ambos" }
				}.ToDictionary(e => e.Key.ToString(), e => e.Value)
			),
			TechBunkerContainsInfo.Default.ToString(),
			false,
			TechBunkerInfo.LobbyOptionsCategory
		);
	}

	public override object Create(ActorInitializer init)
	{
		return new TechBunkerContains();
	}
}

public class TechBunkerContains : INotifyCreated
{
	public TechBunkerContainsType Contains { get; private set; }

	void INotifyCreated.Created(Actor self)
	{
		this.Contains = (TechBunkerContainsType)Enum.Parse(
			typeof(TechBunkerContainsType),
			self.World.LobbyInfo.GlobalSettings.OptionOrDefault(TechBunkerContainsInfo.Id, TechBunkerContainsInfo.Default.ToString())
		);
	}
}
