.class public abstract Lcom/evancharlton/mileage/provider/tables/ContentTable;
.super Ljava/lang/Object;
.source "ContentTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/provider/tables/ContentTable$InsertBuilder;,
        Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    }
.end annotation


# static fields
.field protected static TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content_table"

    sput-object v0, Lcom/evancharlton/mileage/provider/tables/ContentTable;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static final buildProjectionMap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "map"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v4, "projection":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "_id"

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 30
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public final create()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v4, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    invoke-direct {v4, p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;-><init>(Lcom/evancharlton/mileage/provider/tables/ContentTable;)V

    .line 87
    .local v4, "builder":Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getDaoType()Ljava/lang/Class;

    move-result-object v5

    .line 88
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/dao/Dao;>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 89
    .local v9, "fields":[Ljava/lang/reflect/Field;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v8, v2, v11

    .line 90
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 91
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_0

    aget-object v0, v3, v10

    .line 92
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v14, v0, Lcom/evancharlton/mileage/dao/Dao$Column;

    if-eqz v14, :cond_1

    move-object v6, v0

    .line 93
    check-cast v6, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 94
    .local v6, "columnAnnotation":Lcom/evancharlton/mileage/dao/Dao$Column;
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "columnName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/evancharlton/mileage/dao/Dao$Column;->type()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 89
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v6    # "columnAnnotation":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v7    # "columnName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 100
    .end local v11    # "i$":I
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v6    # "columnAnnotation":Lcom/evancharlton/mileage/dao/Dao$Column;
    .restart local v7    # "columnName":Ljava/lang/String;
    .restart local v10    # "i$":I
    :pswitch_0
    invoke-virtual {v4, v7}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addInteger(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    goto :goto_2

    .line 103
    :pswitch_1
    invoke-virtual {v4, v7}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addDouble(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    goto :goto_2

    .line 106
    :pswitch_2
    invoke-virtual {v4, v7}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->addText(Ljava/lang/String;)Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;

    goto :goto_2

    .line 91
    .end local v6    # "columnAnnotation":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v7    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .restart local v11    # "i$":I
    :cond_2
    invoke-virtual {v4}, Lcom/evancharlton/mileage/provider/tables/ContentTable$TableBuilder;->build()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 44
    .local v2, "id":J
    if-nez p3, :cond_0

    .line 45
    const-string p3, ""

    .line 47
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    if-nez p4, :cond_1

    .line 50
    const/4 v5, 0x0

    new-array p4, v5, [Ljava/lang/String;

    .line 52
    :cond_1
    array-length v5, p4

    add-int/lit8 v4, v5, 0x1

    .line 53
    .local v4, "length":I
    new-array v0, v4, [Ljava/lang/String;

    .line 54
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_2

    .line 55
    aget-object v5, p4, v1

    aput-object v5, v0, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v5, v4, -0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    move-object p4, v0

    .line 64
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "id":J
    .end local v4    # "length":I
    :goto_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5

    .line 61
    :catch_0
    move-exception v5

    goto :goto_1

    .line 59
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method protected abstract getDaoType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/evancharlton/mileage/dao/Dao;",
            ">;"
        }
    .end annotation
.end method

.method public getDefaultSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "_id desc"

    return-object v0
.end method

.method public abstract getProjection()[Ljava/lang/String;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract getType(I)Ljava/lang/String;
.end method

.method public abstract init(Z)[Ljava/lang/String;
.end method

.method public abstract insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
.end method

.method public final isValidType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getType(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z
.end method

.method public abstract registerUris()V
.end method

.method public abstract update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
