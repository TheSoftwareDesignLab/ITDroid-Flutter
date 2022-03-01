.class public Lcom/evancharlton/mileage/dao/Fillup;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "Fillup.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "fillups/"
.end annotation


# static fields
.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final DATE:Ljava/lang/String; = "timestamp"

.field public static final ECONOMY:Ljava/lang/String; = "economy"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final ODOMETER:Ljava/lang/String; = "odometer"

.field public static final PARTIAL:Ljava/lang/String; = "is_partial"

.field public static final RESTART:Ljava/lang/String; = "restart"

.field public static final TOTAL_COST:Ljava/lang/String; = "total_cost"

.field public static final UNIT_PRICE:Ljava/lang/String; = "price"

.field public static final VEHICLE_ID:Ljava/lang/String; = "vehicle_id"

.field public static final VOLUME:Ljava/lang/String; = "volume"


# instance fields
.field protected mDate:Ljava/util/Date;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "timestamp"
        type = 0x4
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Past;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700a9
    .end annotation
.end field

.field protected mEconomy:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "economy"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field private final mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/dao/FillupField;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsPartial:Z
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "is_partial"
        type = 0x3
        value = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mIsRestart:Z
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "restart"
        type = 0x3
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mLatitude:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "latitude"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mLongitude:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "longitude"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field private mNext:Lcom/evancharlton/mileage/dao/Fillup;

.field protected mOdometer:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "odometer"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700a5
    .end annotation
.end field

.field private mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

.field protected mTotalCost:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "total_cost"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700a8
    .end annotation
.end field

.field protected mUnitPrice:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "price"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700a7
    .end annotation
.end field

.field protected mVehicleId:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "vehicle_id"
        type = 0x1
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700a4
    .end annotation
.end field

.field protected mVolume:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "volume"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Range$Positive;
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700a6
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mNext:Lcom/evancharlton/mileage/dao/Fillup;

    .line 99
    iput-object v1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mNext:Lcom/evancharlton/mileage/dao/Fillup;

    .line 99
    iput-object v1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

    .line 107
    return-void
.end method


# virtual methods
.method public getCostPerDistance()D
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getDistance()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getDistance()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 242
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getDistance()D
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v0

    iget-object v2, p0, Lcom/evancharlton/mileage/dao/Fillup;->mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getEconomy()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mEconomy:D

    return-wide v0
.end method

.method public getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/dao/FillupField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFields(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/dao/FillupField;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->FILLUPS_FIELDS_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    new-instance v7, Lcom/evancharlton/mileage/dao/FillupField;

    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/FillupField;-><init>(Landroid/database/Cursor;)V

    .line 180
    .local v7, "field":Lcom/evancharlton/mileage/dao/FillupField;
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v7    # "field":Lcom/evancharlton/mileage/dao/FillupField;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mLongitude:D

    return-wide v0
.end method

.method public getNext()Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mNext:Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method public getOdometer()D
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mOdometer:D

    return-wide v0
.end method

.method public getPrevious()Lcom/evancharlton/mileage/dao/Fillup;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalCost()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 211
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 212
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    iget-wide v2, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    .line 213
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->setInMemoryDataChanged()V

    .line 215
    :cond_0
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    return-wide v0
.end method

.method public getUnitPrice()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 219
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 220
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    iget-wide v2, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    .line 221
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->setInMemoryDataChanged()V

    .line 223
    :cond_0
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    return-wide v0
.end method

.method public getVehicleId()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVehicleId:J

    return-wide v0
.end method

.method public getVolume()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 231
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 232
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    iget-wide v2, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    .line 233
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->setInMemoryDataChanged()V

    .line 235
    :cond_0
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mNext:Lcom/evancharlton/mileage/dao/Fillup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartial()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mIsPartial:Z

    return v0
.end method

.method public isRestart()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mIsRestart:Z

    return v0
.end method

.method public loadNext(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "next":Lcom/evancharlton/mileage/dao/Fillup;
    iget-boolean v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mIsRestart:Z

    if-nez v0, :cond_1

    .line 141
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 142
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    .line 143
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vehicle_id = ? AND odometer > ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "odometer asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_0

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    new-instance v7, Lcom/evancharlton/mileage/dao/Fillup;

    .end local v7    # "next":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 152
    .restart local v7    # "next":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return-object v7
.end method

.method public loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 120
    const/4 v7, 0x0

    .line 121
    .local v7, "previous":Lcom/evancharlton/mileage/dao/Fillup;
    iget-boolean v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mIsRestart:Z

    if-nez v0, :cond_1

    .line 122
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 123
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PROJECTION:[Ljava/lang/String;

    .line 124
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vehicle_id = ? AND odometer < ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "odometer desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    new-instance v7, Lcom/evancharlton/mileage/dao/Fillup;

    .end local v7    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    .line 133
    .restart local v7    # "previous":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return-object v7
.end method

.method protected preValidate()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    .line 112
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    .line 113
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    .line 114
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    .line 117
    :cond_0
    return-void
.end method

.method public setEconomy(D)V
    .locals 0
    .param p1, "economy"    # D

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mEconomy:D

    .line 271
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->setInMemoryDataChanged()V

    .line 272
    return-void
.end method

.method public setFields(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/dao/FillupField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evancharlton/mileage/dao/FillupField;>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .prologue
    .line 324
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mLatitude:D

    .line 325
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .prologue
    .line 328
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mLongitude:D

    .line 329
    return-void
.end method

.method public setNext(Lcom/evancharlton/mileage/dao/Fillup;)V
    .locals 0
    .param p1, "next"    # Lcom/evancharlton/mileage/dao/Fillup;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mNext:Lcom/evancharlton/mileage/dao/Fillup;

    .line 281
    return-void
.end method

.method public setOdometer(D)V
    .locals 0
    .param p1, "odometer"    # D

    .prologue
    .line 284
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mOdometer:D

    .line 285
    return-void
.end method

.method public setPartial(Z)V
    .locals 0
    .param p1, "partial"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mIsPartial:Z

    .line 289
    return-void
.end method

.method public setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V
    .locals 0
    .param p1, "previous"    # Lcom/evancharlton/mileage/dao/Fillup;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mPrevious:Lcom/evancharlton/mileage/dao/Fillup;

    .line 293
    return-void
.end method

.method public setRestart(Z)V
    .locals 0
    .param p1, "restart"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mIsRestart:Z

    .line 297
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 300
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/Fillup;->mDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method public setTotalCost(D)V
    .locals 0
    .param p1, "totalCost"    # D

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mTotalCost:D

    .line 309
    return-void
.end method

.method public setUnitPrice(D)V
    .locals 0
    .param p1, "unitPrice"    # D

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mUnitPrice:D

    .line 313
    return-void
.end method

.method public setVehicleId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVehicleId:J

    .line 317
    return-void
.end method

.method public setVolume(D)V
    .locals 0
    .param p1, "volume"    # D

    .prologue
    .line 320
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/Fillup;->mVolume:D

    .line 321
    return-void
.end method

.method public validForEconomy()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v3

    if-nez v3, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    move-object v0, p0

    .line 341
    .local v0, "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :goto_1
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 344
    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Fillup;->getNext()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    goto :goto_1

    .end local v0    # "fillup":Lcom/evancharlton/mileage/dao/Fillup;
    :cond_3
    move v1, v2

    .line 350
    goto :goto_0
.end method
