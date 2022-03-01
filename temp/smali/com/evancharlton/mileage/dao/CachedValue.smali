.class public Lcom/evancharlton/mileage/dao/CachedValue;
.super Lcom/evancharlton/mileage/dao/Dao;
.source "CachedValue.java"


# annotations
.annotation runtime Lcom/evancharlton/mileage/dao/Dao$DataObject;
    path = "cache"
.end annotation


# static fields
.field public static final GROUP:Ljava/lang/String; = "statistics_group"

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final ORDER:Ljava/lang/String; = "statistics_order"

.field public static final VALID:Ljava/lang/String; = "is_valid"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected mGroup:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "statistics_group"
        type = 0x5
        value = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mIsValid:Z
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "is_valid"
        type = 0x3
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mItem:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "item"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700c2
    .end annotation
.end field

.field protected mKey:Ljava/lang/String;
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "key"
        type = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
        value = 0x7f0700c3
    .end annotation
.end field

.field protected mOrder:J
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "statistics_order"
        type = 0x5
        value = 0x0
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field

.field protected mValue:D
    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Column;
        name = "value"
        type = 0x2
    .end annotation

    .annotation runtime Lcom/evancharlton/mileage/dao/Dao$Validate;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/content/ContentValues;)V

    .line 52
    const-string v0, "item"

    invoke-virtual {p0, p1, v0, v1}, Lcom/evancharlton/mileage/dao/CachedValue;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mItem:Ljava/lang/String;

    .line 53
    const-string v0, "key"

    invoke-virtual {p0, p1, v0, v1}, Lcom/evancharlton/mileage/dao/CachedValue;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mKey:Ljava/lang/String;

    .line 54
    const-string v0, "value"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/evancharlton/mileage/dao/CachedValue;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mValue:D

    .line 55
    const-string v0, "is_valid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/evancharlton/mileage/dao/CachedValue;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mIsValid:Z

    .line 56
    const-string v0, "statistics_group"

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/evancharlton/mileage/dao/CachedValue;->getLong(Landroid/content/ContentValues;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mGroup:J

    .line 57
    const-string v0, "statistics_order"

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/evancharlton/mileage/dao/CachedValue;->getLong(Landroid/content/ContentValues;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mOrder:J

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/dao/Dao;-><init>(Landroid/database/Cursor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/evancharlton/mileage/dao/CachedValue;-><init>(Landroid/content/ContentValues;)V

    .line 46
    iput-object p1, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mKey:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getGroup()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mGroup:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mOrder:J

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mValue:D

    return-wide v0
.end method

.method public setGroup(J)V
    .locals 0
    .param p1, "group"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mGroup:J

    .line 82
    return-void
.end method

.method public setOrder(J)V
    .locals 0
    .param p1, "order"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mOrder:J

    .line 90
    return-void
.end method

.method public setValue(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/evancharlton/mileage/dao/CachedValue;->mValue:D

    .line 74
    return-void
.end method
