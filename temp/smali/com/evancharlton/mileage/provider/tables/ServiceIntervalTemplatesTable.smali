.class public Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "ServiceIntervalTemplatesTable.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.interval_template"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.interval_template"

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final SERVICE_TEMPLATES:I = 0x3c

.field private static final SERVICE_TEMPLATE_ID:I = 0x3d

.field public static final TEMPLATES:[Landroid/content/ContentValues;

.field public static final URI:Ljava/lang/String; = "intervals/templates"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 25
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/templates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->BASE_URI:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v8

    const-string v1, "description"

    aput-object v1, v0, v9

    const-string v1, "distance"

    aput-object v1, v0, v10

    const-string v1, "duration"

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "vehicle_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x7

    new-array v6, v0, [Landroid/content/ContentValues;

    const-string v0, "Transmission fluid"

    const-string v1, "Replace transmission fluid"

    const-wide/16 v2, 0x61a8

    const-wide/16 v4, 0x19

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "Timing belt"

    const-string v1, "Replace timing belt"

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3c

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v8

    const-string v0, "Fuel filter"

    const-string v1, "Replace fuel filter"

    const-wide/16 v2, 0x61a8

    const-wide/16 v4, 0x19

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v9

    const-string v0, "Power steering fluid"

    const-string v1, "Replace power steering fluid"

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x1e

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v10

    const-string v0, "Replace air filter"

    const-string v1, "Replace air filter"

    const-wide/16 v2, 0x3a98

    const-wide/16 v4, 0xf

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v11

    const/4 v7, 0x5

    const-string v0, "Oil change (synthetic)"

    const-string v1, "Synthetic oil change"

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xa

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x6

    const-string v0, "Oil change (standard)"

    const-string v1, "Standard oil change"

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3

    invoke-static/range {v0 .. v5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v6, v7

    sput-object v6, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;-><init>()V

    return-void
.end method

.method private static createInterval(Ljava/lang/String;Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "miles"    # J
    .param p4, "months"    # J

    .prologue
    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "distance"

    invoke-static {p2, p3}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->miles(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "duration"

    invoke-static {p4, p5}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->months(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v1, "vehicle_type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    return-object v0
.end method

.method private createIntervalSQL(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    new-instance v0, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;-><init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V

    .line 84
    .local v0, "builder":Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    goto :goto_0

    .line 87
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->build()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static miles(J)J
    .locals 2
    .param p0, "num"    # J

    .prologue
    .line 102
    const-wide/32 v0, 0x27484

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method private static months(J)J
    .locals 2
    .param p0, "num"    # J

    .prologue
    .line 106
    const-wide v0, 0x9a7ec800L

    mul-long/2addr v0, p0

    return-wide v0
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
    .line 52
    const-class v0, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "service_interval_templates"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.interval_template"

    goto :goto_0

    .line 66
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.interval_template"

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 3
    .param p1, "isUpgrade"    # Z

    .prologue
    .line 73
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 75
    .local v1, "sql":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 76
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->createIntervalSQL(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 115
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 130
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "intervals/templates"

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 138
    const-string v0, "intervals/templates/#"

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 139
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
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 153
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    invoke-virtual {p4, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, p4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
