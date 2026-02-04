let
  Source = Excel.CurrentWorkbook(){[Name="tbl_checkins"]}[Content],
  #"Changed column type" = Table.TransformColumnTypes(Source, {{"CustomerID", type text}, {"Leeftijd", Int64.Type}, {"Abonnement / addon", type text}, {"Binnen geweest op", type datetime}}),
  #"Removed columns" = Table.RemoveColumns(#"Changed column type", {"Poort", "Ratio"})
in
  #"Removed columns"
