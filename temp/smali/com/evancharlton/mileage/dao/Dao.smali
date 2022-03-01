.class public abstract Lcom/evancharlton/mileage/dao/Dao;
.super Ljava/lang/Object;
.source "Dao.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/dao/Dao$Range;,
        Lcom/evancharlton/mileage/dao/Dao$Past;,
        Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;,
        Lcom/evancharlton/mileage/dao/Dao$Nullable;,
        Lcom/evancharlton/mileage/dao/Dao$Validate;,
        Lcom/evancharlton/mileage/dao/Dao$DataObject;,
        Lcom/evancharlton/mileage/dao/Dao$Column;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dao"

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field private mId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "_id"
        type = 0x5
    .end annotation
.end field

.field private mInMemoryDataChanged:Z

.field private mUriBase:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->load(Landroid/content/ContentValues;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->load(Landroid/database/Cursor;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBoolean(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 388
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 389
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 392
    .end local p3    # "defaultValue":Z
    :cond_0
    return p3
.end method

.method protected getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDouble(Landroid/content/ContentValues;Ljava/lang/String;D)D
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D

    .prologue
    .line 380
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 381
    .local v0, "value":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    .line 384
    .end local p3    # "defaultValue":D
    :cond_0
    return-wide p3
.end method

.method protected getDouble(Landroid/database/Cursor;Ljava/lang/String;)D
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    return-wide v0
.end method

.method protected getInt(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 364
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 365
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 368
    .end local p3    # "defaultValue":I
    :cond_0
    return p3
.end method

.method protected getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected getLong(Landroid/content/ContentValues;Ljava/lang/String;J)J
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 396
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 397
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 400
    .end local p3    # "defaultValue":J
    :cond_0
    return-wide p3
.end method

.method protected getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 376
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method protected getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/evancharlton/mileage/dao/Dao$DataObject;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/dao/Dao$DataObject;

    .line 205
    .local v0, "annotation":Lcom/evancharlton/mileage/dao/Dao$DataObject;
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    invoke-interface {v0}, Lcom/evancharlton/mileage/dao/Dao$DataObject;->path()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    .line 207
    .end local v0    # "annotation":Lcom/evancharlton/mileage/dao/Dao$DataObject;
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/evancharlton/mileage/dao/Dao;->mUriBase:Landroid/net/Uri;

    goto :goto_0
.end method

.method public final isExistingObject()Z
    .locals 4

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/ContentValues;)V
    .locals 14
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x1

    .line 127
    if-nez p1, :cond_1

    .line 128
    iput-wide v12, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 195
    :cond_0
    return-void

    .line 131
    :cond_1
    const-string v10, "_id"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 132
    .local v6, "id":Ljava/lang/Long;
    if-nez v6, :cond_4

    .line 133
    iput-wide v12, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 139
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 140
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v3, v0, v5

    .line 141
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v10, Lcom/evancharlton/mileage/dao/Dao$Column;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 142
    .local v1, "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    if-eqz v1, :cond_3

    .line 143
    const/4 v9, 0x0

    .line 144
    .local v9, "value":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->type()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 184
    .end local v9    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    .line 186
    :try_start_0
    invoke-virtual {v3, p0, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    goto :goto_0

    .line 146
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "value":Ljava/lang/Object;
    :pswitch_0
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 147
    .local v9, "value":Ljava/lang/Boolean;
    if-nez v9, :cond_2

    .line 148
    new-instance v9, Ljava/lang/Boolean;

    .end local v9    # "value":Ljava/lang/Boolean;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    if-ne v10, v11, :cond_5

    move v10, v11

    :goto_4
    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v9    # "value":Ljava/lang/Boolean;
    goto :goto_2

    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 152
    .local v9, "value":Ljava/lang/Object;
    :pswitch_1
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    .line 153
    .local v9, "value":Ljava/lang/Double;
    if-nez v9, :cond_2

    .line 154
    new-instance v9, Ljava/lang/Double;

    .end local v9    # "value":Ljava/lang/Double;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    int-to-double v12, v10

    invoke-direct {v9, v12, v13}, Ljava/lang/Double;-><init>(D)V

    .restart local v9    # "value":Ljava/lang/Double;
    goto :goto_2

    .line 158
    .local v9, "value":Ljava/lang/Object;
    :pswitch_2
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 159
    .local v9, "value":Ljava/lang/Integer;
    if-nez v9, :cond_2

    .line 160
    new-instance v9, Ljava/lang/Integer;

    .end local v9    # "value":Ljava/lang/Integer;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    .restart local v9    # "value":Ljava/lang/Integer;
    goto :goto_2

    .line 164
    .local v9, "value":Ljava/lang/Object;
    :pswitch_3
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 165
    .local v9, "value":Ljava/lang/Long;
    if-nez v9, :cond_2

    .line 166
    new-instance v9, Ljava/lang/Long;

    .end local v9    # "value":Ljava/lang/Long;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    int-to-long v12, v10

    invoke-direct {v9, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .restart local v9    # "value":Ljava/lang/Long;
    goto :goto_2

    .line 170
    .local v9, "value":Ljava/lang/Object;
    :pswitch_4
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "value":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 172
    const-string v9, ""

    goto :goto_2

    .line 176
    .local v9, "value":Ljava/lang/Object;
    :pswitch_5
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 177
    .local v8, "ms":Ljava/lang/Long;
    if-eqz v8, :cond_6

    .line 178
    new-instance v9, Ljava/util/Date;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .local v9, "value":Ljava/util/Date;
    goto/16 :goto_2

    .line 180
    .local v9, "value":Ljava/lang/Object;
    :cond_6
    new-instance v9, Ljava/util/Date;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .local v9, "value":Ljava/util/Date;
    goto/16 :goto_2

    .line 187
    .end local v8    # "ms":Ljava/lang/Long;
    .end local v9    # "value":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "Dao"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t set value for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 189
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v10, "Dao"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t access "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 59
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    :cond_0
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 65
    .local v5, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_7

    aget-object v4, v0, v6

    .line 66
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v10, Lcom/evancharlton/mileage/dao/Dao$Column;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 67
    .local v1, "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    if-eqz v1, :cond_2

    .line 68
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "columnIndex":I
    const/4 v9, 0x0

    .line 70
    .local v9, "value":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->type()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 112
    .end local v9    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 114
    :try_start_0
    invoke-virtual {v4, p0, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v2    # "columnIndex":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 72
    .restart local v2    # "columnIndex":I
    .restart local v9    # "value":Ljava/lang/Object;
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 73
    .local v9, "value":Ljava/lang/Integer;
    if-nez v9, :cond_4

    .line 74
    new-instance v9, Ljava/lang/Boolean;

    .end local v9    # "value":Ljava/lang/Integer;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    .local v9, "value":Ljava/lang/Boolean;
    goto :goto_1

    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 76
    .local v9, "value":Ljava/lang/Integer;
    :cond_4
    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "value":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 78
    .local v9, "value":Ljava/lang/Boolean;
    goto :goto_1

    .line 76
    .end local v9    # "value":Ljava/lang/Boolean;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 80
    .local v9, "value":Ljava/lang/Object;
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 81
    .local v9, "value":Ljava/lang/Double;
    if-nez v9, :cond_1

    .line 82
    new-instance v9, Ljava/lang/Double;

    .end local v9    # "value":Ljava/lang/Double;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    int-to-double v10, v10

    invoke-direct {v9, v10, v11}, Ljava/lang/Double;-><init>(D)V

    .restart local v9    # "value":Ljava/lang/Double;
    goto :goto_1

    .line 86
    .local v9, "value":Ljava/lang/Object;
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 87
    .local v9, "value":Ljava/lang/Integer;
    if-nez v9, :cond_1

    .line 88
    new-instance v9, Ljava/lang/Integer;

    .end local v9    # "value":Ljava/lang/Integer;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    .restart local v9    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 92
    .local v9, "value":Ljava/lang/Object;
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 93
    .local v9, "value":Ljava/lang/Long;
    if-nez v9, :cond_1

    .line 94
    new-instance v9, Ljava/lang/Long;

    .end local v9    # "value":Ljava/lang/Long;
    invoke-interface {v1}, Lcom/evancharlton/mileage/dao/Dao$Column;->value()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .restart local v9    # "value":Ljava/lang/Long;
    goto :goto_1

    .line 98
    .local v9, "value":Ljava/lang/Object;
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "value":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 100
    const-string v9, ""

    goto :goto_1

    .line 104
    .local v9, "value":Ljava/lang/Object;
    :pswitch_5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 105
    .local v8, "ms":Ljava/lang/Long;
    if-eqz v8, :cond_6

    .line 106
    new-instance v9, Ljava/util/Date;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .local v9, "value":Ljava/util/Date;
    goto/16 :goto_1

    .line 108
    .local v9, "value":Ljava/lang/Object;
    :cond_6
    new-instance v9, Ljava/util/Date;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .local v9, "value":Ljava/util/Date;
    goto/16 :goto_1

    .line 115
    .end local v8    # "ms":Ljava/lang/Long;
    .end local v9    # "value":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "Dao"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t set value for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 117
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v10, "Dao"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t access "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 123
    .end local v1    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v2    # "columnIndex":I
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_7
    return-void

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method protected preValidate()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 300
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/dao/Dao;->validate(Landroid/content/ContentValues;)V

    .line 302
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->isExistingObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const-string v4, "_id"

    iget-wide v5, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Dao;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 309
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    goto :goto_0
.end method

.method public saveIfChanged(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->save(Landroid/content/Context;)Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 336
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Dao;->mId:J

    .line 337
    return-void
.end method

.method protected setInMemoryDataChanged()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/Dao;->mInMemoryDataChanged:Z

    .line 341
    return-void
.end method

.method protected final validate(Landroid/content/ContentValues;)V
    .locals 18
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/dao/Dao;->preValidate()V

    .line 222
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 223
    .local v9, "fields":[Ljava/lang/reflect/Field;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_d

    aget-object v8, v1, v10

    .line 224
    .local v8, "field":Ljava/lang/reflect/Field;
    const-class v14, Lcom/evancharlton/mileage/dao/Dao$Validate;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/evancharlton/mileage/dao/Dao$Validate;

    .line 225
    .local v12, "validate":Lcom/evancharlton/mileage/dao/Dao$Validate;
    if-nez v12, :cond_1

    .line 223
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-interface {v12}, Lcom/evancharlton/mileage/dao/Dao$Validate;->value()I

    move-result v7

    .line 230
    .local v7, "errorMessage":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 231
    .local v13, "value":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 232
    if-lez v7, :cond_9

    .line 234
    if-nez v13, :cond_2

    const-class v14, Lcom/evancharlton/mileage/dao/Dao$Nullable;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 235
    new-instance v14, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v14, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    .end local v13    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 289
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v14, "Dao"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 239
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v14, v13, Ljava/lang/String;

    if-eqz v14, :cond_3

    const-class v14, Lcom/evancharlton/mileage/dao/Dao$CanBeEmpty;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-nez v14, :cond_3

    .line 241
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_3

    .line 242
    new-instance v14, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v14, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v14
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    .end local v13    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 291
    .local v6, "e":Ljava/lang/IllegalAccessException;
    const-string v14, "Dao"

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 247
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_2
    instance-of v14, v13, Ljava/lang/Number;

    if-eqz v14, :cond_9

    .line 248
    const-class v14, Lcom/evancharlton/mileage/dao/Dao$Past;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_4

    const/4 v2, 0x1

    .line 249
    .local v2, "checkPast":Z
    :goto_2
    const-class v14, Lcom/evancharlton/mileage/dao/Dao$Range$Positive;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_5

    const/4 v3, 0x1

    .line 251
    .local v3, "checkPositive":Z
    :goto_3
    instance-of v14, v13, Ljava/lang/Double;

    if-eqz v14, :cond_6

    .line 252
    if-eqz v3, :cond_6

    move-object v0, v13

    check-cast v0, Ljava/lang/Double;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_6

    .line 253
    new-instance v14, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v14, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v14

    .line 248
    .end local v2    # "checkPast":Z
    .end local v3    # "checkPositive":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 249
    .restart local v2    # "checkPast":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 257
    .restart local v3    # "checkPositive":Z
    :cond_6
    instance-of v14, v13, Ljava/lang/Long;

    if-eqz v14, :cond_8

    .line 258
    if-eqz v3, :cond_7

    move-object v0, v13

    check-cast v0, Ljava/lang/Long;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_7

    .line 259
    new-instance v14, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v14, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v14

    .line 261
    :cond_7
    if-eqz v2, :cond_8

    move-object v0, v13

    check-cast v0, Ljava/lang/Long;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-ltz v14, :cond_8

    .line 262
    new-instance v14, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v14, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v14

    .line 266
    :cond_8
    instance-of v14, v13, Ljava/lang/Integer;

    if-eqz v14, :cond_9

    .line 267
    if-eqz v3, :cond_9

    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gtz v14, :cond_9

    .line 268
    new-instance v14, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;

    invoke-direct {v14, v7}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;-><init>(I)V

    throw v14

    .line 275
    .end local v2    # "checkPast":Z
    .end local v3    # "checkPositive":Z
    :cond_9
    const-class v14, Lcom/evancharlton/mileage/dao/Dao$Column;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/dao/Dao$Column;

    .line 276
    .local v4, "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    if-eqz v4, :cond_0

    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, "data":Ljava/lang/String;
    instance-of v14, v13, Ljava/util/Date;

    if-eqz v14, :cond_a

    .line 279
    check-cast v13, Ljava/util/Date;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 285
    :goto_4
    invoke-interface {v4}, Lcom/evancharlton/mileage/dao/Dao$Column;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v14, v13, Ljava/lang/Boolean;

    if-eqz v14, :cond_c

    .line 281
    check-cast v13, Ljava/lang/Boolean;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v5, "1"

    :goto_5
    goto :goto_4

    :cond_b
    const-string v5, "0"

    goto :goto_5

    .line 283
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_c
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_4

    .line 294
    .end local v4    # "column":Lcom/evancharlton/mileage/dao/Dao$Column;
    .end local v5    # "data":Ljava/lang/String;
    .end local v7    # "errorMessage":I
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "validate":Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_d
    return-void
.end method
