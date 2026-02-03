let
  Source = Excel.Workbook(File.Contents("/Users/aliasaccount/Library/CloudStorage/OneDrive-Personal/Documenten/2025 Bezoekrapportage.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "202501", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"CustomerID", type text}, {"Leeftijd", Int64.Type}, {"Abonnement / addon", type text}, {"Binnen geweest op", type datetime}, {"Poort", type text}, {"Ratio", type text}}),
  #"Removed columns" = Table.RemoveColumns(#"Changed column type", {"Poort", "Ratio"}),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Removed columns", {{"CustomerID", type text}, {"Leeftijd", Int64.Type}, {"Binnen geweest op", type datetime}, {"Abonnement / addon", type text}})
in
  #"Changed column type 1"
