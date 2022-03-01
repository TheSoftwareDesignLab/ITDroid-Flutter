.class public Lcom/evancharlton/mileage/provider/tables/VehiclesTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "VehiclesTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.vehicle"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.vehicles"

.field public static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "vehicles"

.field private static final VEHICLES:I = 0x28

.field public static final VEHICLES_URI:Ljava/lang/String; = "vehicles/"

.field private static final VEHICLE_ID:I = 0x29


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "vehicles/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    .line 32
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "year"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "make"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "model"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vehicle_type_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "default_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "odometer_units"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "volume_units"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "economy_units"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "currency_units"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDaoType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/evancharlton/mileage/dao/Dao;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const-class v0, Lcom/evancharlton/mileage/dao/Vehicle;

    return-object v0
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "default_time desc"

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "vehicles"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.vehicles"

    goto :goto_0

    .line 54
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.vehicle"

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 6
    .param p1, "isUpgrade"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;-><init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V

    const-string v3, "title"

    const-string v4, "Default vehicle"

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "description"

    const-string v4, "Auto-generated vehicle"

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "default_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;J)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "make"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "model"

    const-string v4, "Mileage"

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "year"

    const-string v4, "2010"

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "vehicle_type_id"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;J)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->build()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 80
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 95
    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "vehicles/"

    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 103
    const-string v0, "vehicles/#"

    const/16 v1, 0x29

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "match"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id = ?"

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {p2, v1, p4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
