.class public Lcom/evancharlton/mileage/provider/tables/FillupsTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "FillupsTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.fillup"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.fillup"

.field public static final CSV_PROJECTION:[Ljava/lang/String;

.field private static final FILLUPS:I = 0xa

.field private static final FILLUP_ID:I = 0xb

.field public static final PLAINTEXT:[I

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "fillups"

.field public static final URI:Ljava/lang/String; = "fillups/"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xc

    .line 31
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fillups/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "total_cost"

    aput-object v1, v0, v5

    const-string v1, "price"

    aput-object v1, v0, v6

    const-string v1, "volume"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "odometer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "economy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vehicle_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_partial"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "restart"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "total_cost"

    aput-object v1, v0, v5

    const-string v1, "price"

    aput-object v1, v0, v6

    const-string v1, "volume"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "odometer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "economy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vehicle_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_partial"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "restart"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PLAINTEXT:[I

    return-void

    :array_0
    .array-data 4
        0x7f070119
        0x7f07011a
        0x7f07011b
        0x7f07011c
        0x7f07011d
        0x7f07011e
        0x7f07011f
        0x7f070120
        0x7f070121
        0x7f070122
        0x7f070123
        0x7f070124
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 54
    const-class v0, Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "odometer desc"

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "fillups"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.fillup"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.fillup"

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "isUpgrade"    # Z

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 85
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0xa
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

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillups._id = "

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

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move v0, v1

    .line 98
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "fillups/"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 65
    const-string v0, "fillups/#"

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "match"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "fillUpId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "clause":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p4, v0, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 111
    .end local v0    # "clause":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
