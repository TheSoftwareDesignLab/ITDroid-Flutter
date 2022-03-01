.class public Lau/com/bytecode/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;
.super Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;


# instance fields
.field private columnMapping:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getColumnMapping()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-object v0
.end method

.method protected getColumnName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->getColumnMapping()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->header:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setColumnMapping(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lau/com/bytecode/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-void
.end method
