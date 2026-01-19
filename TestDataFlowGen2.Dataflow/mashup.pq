[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Orders_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared Orders = let
  Source = Sql.Database("renchingsqls1.database.windows.net", "AdvantureWorks"),
  #"Navigation 1" = Source{[Schema = "dbo", Item = "Orders"]}[Data]
in
  #"Navigation 1";
shared Orders_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "d6919e16-fae8-437e-8dd7-32c3f4ab7737"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "a79d6ac0-4711-4802-bc92-b9a2939c3783"]}[Data],
  TableNavigation = Navigation_2{[Id = "Orders", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
