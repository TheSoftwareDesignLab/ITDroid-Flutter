.class public Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;
.super Lcom/evancharlton/mileage/provider/tables/ContentTable;
.source "FillupsFieldsTable.java"


# static fields
.field private static final CONTENT_ITEMS_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.fillups_fields"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.evancharlton.fillup_field_id"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.evancharlton.fillup_fields"

.field private static final FILLUPS_FIELDS:I = 0x16

.field public static final FILLUPS_FIELDS_PATH:Ljava/lang/String; = "fillups/fields"

.field public static final FILLUPS_FIELDS_URI:Landroid/net/Uri;

.field public static final FILLUPS_FIELD_PATH:Ljava/lang/String; = "fillups/field"

.field private static final FILLUP_FIELD:I = 0x15

.field private static final FILLUP_FIELDS:I = 0x14

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "fillups_fields"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "fillups/fields"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->FILLUPS_FIELDS_URI:Landroid/net/Uri;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fillup_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "template_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

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
    .line 55
    const-class v0, Lcom/evancharlton/mileage/dao/FillupField;

    return-object v0
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "template_id desc"

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "fillups_fields"

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.evancharlton.fillup_field_id"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.fillup_fields"

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.evancharlton.fillups_fields"

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public init(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "isUpgrade"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 93
    :pswitch_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_1
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
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillup_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 114
    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public registerUris()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "fillups/fields"

    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 122
    const-string v0, "fillups/fields/#"

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 123
    const-string v0, "fillups/field/#"

    const/16 v1, 0x15

    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V

    .line 124
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
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 140
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->getTableName()Ljava/lang/String;

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

    .line 135
    :pswitch_1
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
