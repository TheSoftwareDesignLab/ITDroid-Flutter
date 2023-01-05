.class public Lcom/evancharlton/mileage/provider/tables/FieldsTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "FieldsTable.java"


# static fields
.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.field_id"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.fields"

.field private static final FIELDS:I = 0x1e

.field private static final FIELD_ID:I = 0x1f

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;

.field public static final URI_PATH:Ljava/lang/String; = "fields/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fields/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->URI:Landroid/net/Uri;

    .line 34
    const/4 v0, 0x4

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

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    return-void
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
    .line 40
    const-class v0, Lcom/evancharlton/mileage/dao/Field;

    return-object v0
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "title asc"

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "fields"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.fields"

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.field_id"

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 5
    .param p1, "isUpgrade"    # Z

    .prologue
    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;-><init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V

    const-string v3, "title"

    const-string v4, "Comment"

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    const-string v3, "description"

    const-string v4, "Comment about your fillup."

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;->build()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 79
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1e
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

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 93
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

    .line 94
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "fields/"

    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 102
    const-string v0, "fields/#"

    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "match"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 108
    if-nez p5, :cond_0

    .line 109
    const-string p5, ""

    .line 111
    :cond_0
    if-nez p6, :cond_1

    .line 112
    new-array p6, v6, [Ljava/lang/String;

    .line 114
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 128
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 116
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "query":Ljava/lang/String;
    array-length v3, p6

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 120
    .local v0, "args":[Ljava/lang/String;
    const-string v3, "_id"

    invoke-virtual {p4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p6

    if-ge v1, v3, :cond_3

    .line 122
    add-int/lit8 v3, v1, 0x1

    aget-object v4, p6, v1

    aput-object v4, v0, v3

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "query":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 124
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "query":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 126
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "query":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
