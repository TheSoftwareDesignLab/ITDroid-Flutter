.class public Lcom/evancharlton/mileage/dao/FillupField;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "FillupField.java"


# static fields
.field public static final FILLUP_ID:Ljava/lang/String; = "fillup_id"

.field public static final TEMPLATE_ID:Ljava/lang/String; = "template_id"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected mFillupId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "fillup_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700ae
    .end annotation
.end field

.field protected mTemplateId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "template_id"
        type = 0x5
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700ad
    .end annotation
.end field

.field protected mValue:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "value"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getFieldTemplate(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Field;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 93
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->getTemplateId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 94
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, "c":Landroid/database/Cursor;
    new-instance v7, Lcom/evancharlton/mileage/dao/Field;

    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/Field;-><init>(Landroid/database/Cursor;)V

    .line 97
    .local v7, "f":Lcom/evancharlton/mileage/dao/Field;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 98
    return-object v7
.end method

.method public getFillup(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemplateId()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupField;->mTemplateId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    .line 46
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->isExistingObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "fillups/field"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const-string v1, "fillups/fields"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/FillupField;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 57
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v9, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v9}, Lcom/evancharlton/mileage/dao/FillupField;->validate(Landroid/content/ContentValues;)V

    .line 59
    const-string v3, "fillup_id = ? AND template_id = ?"

    .line 60
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupField;->mFillupId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/FillupField;->mTemplateId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 64
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->FILLUPS_FIELDS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 68
    .local v7, "id":J
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 72
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->isExistingObject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/FillupField;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id = ?"

    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-virtual {v0, v1, v9, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v10

    .line 80
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;->save(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFillupId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mFillupId:J

    .line 107
    return-void
.end method

.method public setTemplateId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mTemplateId:J

    .line 111
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/FillupField;->mValue:Ljava/lang/String;

    .line 115
    return-void
.end method
