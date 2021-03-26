cfg = {}

cfg.webhook = "" --Webhooken, den skal logge til

cfg.politibiler = { --Skriv selv jeres poltibiler ind, husk at den sidste bil ikke skal have komma efter " som vist i eksemplet under
  "bil1",
  "bil2",
  "bil3",
  "bil4",
  "bil5"
}

cfg.permission = "" --Den permission folk skal have, før den ikke sender beskeden i webhooken

return cfg
